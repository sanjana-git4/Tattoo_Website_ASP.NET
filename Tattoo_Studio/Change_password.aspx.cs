using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio
{
    public partial class Change_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUser where email=@email and username=@username", con);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@username", txtuser.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    SqlCommand cmd1 = new SqlCommand("Update tblUser set password='" + pwd.Text + "'",con);
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script> alert('Password Change Successfully');  </script>");
                    con.Close();
                    txtuser.Text = "";
                    email.Text = "";
                    pwd.Text = "";
                    cpwd.Text = "";
                }
                else
                {
                    Response.Write("<script> alert('Invalid User');  </script>");
                }
            }
        }
    }
}