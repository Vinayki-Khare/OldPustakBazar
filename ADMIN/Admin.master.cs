using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Admin : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["AdminName"] != null && Session["AdminPass"] != null)
            {
                lblmsg.Text = Session["AdminName"].ToString();
            }
            else
            {
                Session.Clear();
                Response.Redirect("Admin_login.aspx");
            }
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Response.Redirect("../IndexPage.aspx");
    }
}
