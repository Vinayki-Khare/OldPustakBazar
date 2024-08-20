using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IndexPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    if (Session["Uname"] != null && Session["Upassword"] != null)
        //    {
        //        lgmsg.Text = Session["Uname"].ToString();
        //    }
        //    else
        //    {
        //        Session.Clear();
        //        Response.Redirect("IndexPage.aspx");
        //    }
        //}
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void txtSearch_Click(object sender, EventArgs e)
    {
        try
        {
            if(txtsearch.Text.Trim().Length > 0)
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("Select * from Add_Books where BookName like '%" + txtsearch.Text.Trim() + "%'", con))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        Repeater2.DataSource = dt;
                        Repeater2.DataBind();
                    }
                    else
                    {
                        lgmsg.Text = "No Data Bound";
                    }
                }
            }
            else
            {
                lgmsg.Text ="Please Enter Values";
            }
        }
        catch (Exception ex)
        {
            lgmsg.Text = ex.Message;
        }
    }
}