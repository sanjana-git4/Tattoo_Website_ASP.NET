using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio.User
{
    public partial class Add_review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("../SignIn1.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
          
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblReview(R_date,description,userId) Values('" + DateTime.Now.ToString("dd/MM/yyyy") + "','" + txtcomment.Text + "','" + Session["id"] + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Review Added Successfully');  </script>");
                    clr();
                    con.Close();
                }
            

        }
        private void clr()
        {
         
            txtcomment.Text = string.Empty;
          

        }
    }
    
}