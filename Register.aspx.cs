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
public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Uname.Text.Trim().Length > 0 && Umail.Text.Trim().Length > 0)
            {
               
                using (SqlCommand cmd = new SqlCommand("INSERT INTO register (Name,Email,Mobile,Address,Password) VALUES (@Name,@Email,@Mobile,@Address,@Password)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Name", Uname.Text);
                    cmd.Parameters.AddWithValue("@Email", Umail.Text);
                    cmd.Parameters.AddWithValue("@Mobile", Unumber.Text);
                    cmd.Parameters.AddWithValue("@Address", address.Text);
                    cmd.Parameters.AddWithValue("@Password", Upassword.Text);



                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Uname.Text = "";
                    Umail.Text = "";
                    Unumber.Text = "";
                    address.Text = "";
                    Upassword.Text = "";
                    lblmsg.Text = "Data Added Successsfully";
                }
            }
            else
            {
                lblmsg.Text = "Please Enter Values";
            }
        }

    }
