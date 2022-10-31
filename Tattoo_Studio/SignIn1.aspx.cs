using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tattoo_Studio.User;


namespace Tattoo_Studio
{
    public partial class SignIn11 : System.Web.UI.Page
    {
        static String decryptedpwd;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUser where username=@username", con);
                cmd.Parameters.AddWithValue("@pwd", pwd.Text);
                cmd.Parameters.AddWithValue("@username", user.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                string pass;
                if (dt.Rows.Count != 0)
                {

                    string Utype;
                    Utype = dt.Rows[0][6].ToString().Trim();
                    pass = dt.Rows[0][2].ToString().Trim();

                    decryptpwd(pass);
                    if (Utype == "User" && decryptedpwd== pwd.Text)
                    {
                        Session["id"] = dt.Rows[0][0].ToString();
                        Session["username"] = dt.Rows[0][1].ToString();
                        Response.Redirect("./User/Home.aspx");
                    }
                    else if (Utype == "Admin" && decryptedpwd == pwd.Text)
                    {
                        Session["id"] = dt.Rows[0][0].ToString();
                        Response.Redirect("./Admin/Admin_home.aspx");
                    }
                    else if (Utype == "Staff" && decryptedpwd == pwd.Text)
                    {
                        Session["id"] = dt.Rows[0][0].ToString();
                        Response.Redirect("./Staff/Staff_home.aspx");
                    }
                    else
                    {
                        Response.Write("<script> alert('Invalid User, You should Register..');  </script>");
                    }

                }
                else
                {
                    Response.Write("<script> alert('There is no any Registed user..');  </script>");
                }

                clr();
                user.Text = "";
                con.Close();


            }

        }
        private void clr()
        {
            pwd.Text = string.Empty;
            user.Text = string.Empty;
        
        }
        private void decryptpwd(String encrytpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encrytpwd);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            decryptedpwd = decryptpwd;

        }

    }
}