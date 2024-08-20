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


public partial class ADMIN_Add_Books : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    FillGrid();
        //}
    }
    protected void Add_Button_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0)
            {
                byte[] bytes;
                if (Pimage.HasFile)
                {
                    using (BinaryReader br = new BinaryReader(Pimage.PostedFile.InputStream))
                    {
                        bytes = br.ReadBytes(Pimage.PostedFile.ContentLength);
                    }
                }
                else
                {
                    lblmsg.Text = "Please Select Image";
                    return;
                }
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Add_Books (BookName,BookPrice,BookImage,CategoryId) VALUES (@BookName,@BookPrice,@BookImage,@CategoryId)", con))
                {
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@BookName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@BookPrice", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@BookImage", bytes);
                    cmd.Parameters.AddWithValue("@CategoryId", drdcategory.SelectedValue);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    lblmsg.Text = "Data Saved Successfully";
                }
            }
            else
            {
                lblmsg.Text = "Please enter data";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "something went wrong";
        }
    }
}