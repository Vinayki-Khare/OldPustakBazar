using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class ADMIN_ViewBooks : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }
    }

    public void FillGrid()
    {
        try
        {
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Add_Books", con))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView.DataSource = dt;
                GridView.DataBind();
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something wrong in fetching";
        }
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    DataRowView dr = (DataRowView)e.Row.DataItem;
        //    string imageUrl = "data:image/jpg:base64," + Convert.ToBase64String((byte[])dr["BookImage"]);
        //    (e.Row.FindControl("img1") as Image).ImageUrl = imageUrl;
        //}
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try { 
       if(e.CommandName == "DEL")
       {
           int ID = Convert.ToInt32(e.CommandArgument.ToString());
           using (SqlCommand cmd = new SqlCommand("Delete from Add_Books where BookId = @BookID", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@BookId", ID );
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    FillGrid();
                    lblmsg.Text = "Data Deleted";
                }
       }
            }
        catch(Exception ex)
        {
            lblmsg.Text = "Something went wrong";
        }
    }
}