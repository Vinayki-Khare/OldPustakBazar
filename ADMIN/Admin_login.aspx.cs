using System;
using System.Configuration;
using System.Data.SqlClient;
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

public partial class Admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (uname.Text.Length > 0 && uname.Text == "Abhishek" && pwd.Text.Length > 0 && pwd.Text == "@abhi@")
        {
            Session["AdminName"] = uname.Text;
            Session["AdminPass"] = pwd.Text;
            Response.Redirect("Add_Books.aspx");
        }
        else
        {
            Label1.Text = "Invalid User";
        }

    }
}