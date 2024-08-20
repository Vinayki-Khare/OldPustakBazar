using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using  System.IO;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        if(Umail.Text.Trim().Length > 0 && Upass.Text.Trim().Length > 0)
        {

            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT  Id,Email,Password FROM register where Email='" + Umail.Text.Trim() + "' and Password = '" + Upass.Text.Trim() + "'", con))
            {

                DataTable dt = new DataTable();
                sda.Fill(dt);
                

                if (dt.Rows.Count > 0)
                {
                    Session["Id"] = dt.Rows[0]["Id"].ToString();
                    Session["Email"] = dt.Rows[0]["Email"].ToString();
                    Session["Password"] = dt.Rows[0]["Password"].ToString();
                    Response.Redirect("IndexPage.aspx");
                    
                }
                else
                {
                    lbl1msg.Text = "Invalid User";
                    lbl1msg.ForeColor = System.Drawing.Color.Red;
                }

            }
        }
        else
        {
            lbl1msg.Text = "Please Enter Data";
        }
    }
}