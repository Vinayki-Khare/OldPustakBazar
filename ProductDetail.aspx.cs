using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string IDs = Request.QueryString["ID"].ToString();
            ViewState["IDs"] = IDs;
            FillGrid(IDs);
        }
    }
    public void FillGrid(string BookId)
    {
        try
        {
            using (SqlDataAdapter sda = new SqlDataAdapter("select * from Add_Books where BookId='" + BookId + "'", con))
            {
                DataTable dt=new DataTable();

                sda.Fill(dt);
                if(dt.Rows.Count > 0)
                {
                    lblBookName.Text = dt.Rows[0]["BookName"].ToString();
                    lblPrice.Text = "BookPrice - " + dt.Rows[0]["BookPrice"].ToString();
                    //lbldesc.Text= "Description - " + dt.Rows[0]["BookPrice"].ToString();
                    string imageurl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dt.Rows[0]["BooKImage"]);
                    Pimage.ImageUrl = imageurl;
                }
                else{
                        hflblmsg.Text = "No Data Found";
                }
            }
        }
        catch(Exception ex)
        {
            hflblmsg.Text = ex.Message;
        }
    }
    protected void Buybtn_Click(object sender, EventArgs e)
    {
        if (Session["Id"] != null && !string.IsNullOrEmpty(ViewState["IDs"].ToString()))
        {
            string UserId = Session["Id"].ToString();
            string BookId = ViewState["IDs"].ToString();

            using (SqlCommand cmd = new SqlCommand("INSERT INTO OrderTable(Id,BookId) values (@Id,@BookId)", con))
             {
                 cmd.CommandType = CommandType.Text;
                 cmd.Parameters.AddWithValue("@Id", UserId);
                 cmd.Parameters.AddWithValue("@BookId", BookId);
                 con.Open();
                 cmd.ExecuteNonQuery();
                 con.Close();
                 buylbl.Text = "Order Placed";
                 buylbl.ForeColor = System.Drawing.Color.Green;
             }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}