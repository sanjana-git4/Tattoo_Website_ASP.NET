using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tattoo_Studio.User;

namespace Tattoo_Studio
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        String encrypwd;
        String encrypwd1;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            encryption1();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblUser(username,password,C_password,email,contact,usertype) Values('" + user.Text + "','" + encrypwd + "','" + encrypwd1 + "','" + email.Text + "','" + mobile.Text + "','User')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Registration Successfully done'); window.location = 'SignIn1.aspx' </script>");
                clr();
                con.Close();
                
            }
          //  Response.Redirect("SignIn1.aspx");

        }
        private void clr()
        {
            user.Text = string.Empty;
            pwd.Text = string.Empty;
            cpwd.Text = string.Empty;
            email.Text = string.Empty;
            mobile.Text = string.Empty;
        
          }
        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[pwd.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(pwd.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;

            string strmsg1 = string.Empty;
            byte[] encode1 = new byte[cpwd.Text.ToString().Length];
            encode1 = Encoding.UTF8.GetBytes(cpwd.Text);
            strmsg1 = Convert.ToBase64String(encode);
            encrypwd1 = strmsg1;
        }

    }
}
   