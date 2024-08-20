using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"] != null && Session["Password"] != null)
            {
                // lblmsg1.Text = Session["FirstName"].ToString();
                log1.Visible = false;
                reg2.Visible = false;
                log3.Visible = true;
                dash4.Visible = true;
                
            }
            else
            {
                log1.Visible = true;
                reg2.Visible = true;
                log3.Visible = false;
                dash4.Visible = false;
                //Session.Clear();
                //Response.Redirect("UserLogin1.aspx");
            }
        }
    }
    protected void log1_Click(object sender, EventArgs e)
    {
         Response.Redirect("login.aspx");
    }
    protected void reg2_Click(object sender, EventArgs e)
    {
          Response.Redirect("Register.aspx");
    }
    protected void log3_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("IndexPage.aspx");
    }
    protected void dash4_Click(object sender, EventArgs e)
    {
        Response.Redirect("User/UserProfilePage.aspx");
    }
}
