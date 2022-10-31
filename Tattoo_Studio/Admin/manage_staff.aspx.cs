using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio.Admin
{
    public partial class manage_staff : System.Web.UI.Page
    {


        String encrypwd1, encrypwd2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("../SignIn1.aspx");
            }
            if (!IsPostBack)
            {
                BindUser();
            }
        }
        private void BindUser()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblUser", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrstaff.DataSource = dt;
                        rptrstaff.DataBind();
                    }
                }
            }

        }


    

            protected void btnAdd_Click1(object sender, EventArgs e)
            {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString))
            {
                encryption1();
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblUser(username,password,C_password,email,contact,usertype) Values('" + txtUname.Text + "','" + encrypwd1 + "','" + encrypwd2 + "','" + txtEmail.Text + "','" + txtContact.Text + "','Staff')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Registration Successfully done');  </script>");
                clr();
                con.Close();

                Response.Redirect("manage_staff.aspx");
            }

          
        }
        private void clr()
        {
            txtUname.Text = string.Empty;
            txtpwd.Text = string.Empty;
            txtC_password.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtContact.Text = string.Empty;
        }

        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[txtpwd.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(txtpwd.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd1 = strmsg;

            string strmsg1 = string.Empty;
            byte[] encode1 = new byte[txtC_password.Text.ToString().Length];
            encode1 = Encoding.UTF8.GetBytes(txtC_password.Text);
            strmsg1 = Convert.ToBase64String(encode);
            encrypwd2 = strmsg1;
        }

    }
        }
    
    



