using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserProfilePage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {
            if (Session["Email"] != null && Session["Password"] != null)
            {
                FillGrid();
            }
            else
            {
                 Response.Redirect("/login.aspx");
            }
         }
}
    public void FillGrid()
    {
        try
        {
            
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM BookOrderView WHERE Id = '" + Session["Id"] + "'", con))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gvlist.DataSource = dt;
                gvlist.DataBind();
            }
        }
        catch (Exception ex)
        {
            // lblmsg.Text = "Something wrong in fetching";
        }
    }
 }