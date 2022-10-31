using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio.Admin
{
    public partial class Update_user : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  if (Session["id"] == null)
            {
                Response.Redirect("../SignIn1.aspx");
            }*/
            con.Open();
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            SqlCommand cmd = new SqlCommand("select * from tblUser where userId=" + id + "", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter st = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            st.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                txtUname.Text = dt.Rows[0][1].ToString();
                txtEmail.Text= dt.Rows[0][4].ToString();
                txtContact.Text= dt.Rows[0][5].ToString();
            }
        }

      

        protected void btnAdd1_Click1(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["id"].ToString());



            using (SqlCommand cmd1 = new SqlCommand("Update tblUser set username='" + txtUname.Text + "', email='" + txtEmail.Text + "',contact='" + txtContact.Text + "' where userId=" + id + "", con))
            {
                con.Open();
                cmd1.ExecuteNonQuery();

                con.Close();
                Response.Redirect("manage_staff.aspx");
            }
        }
    }

     

       
    }
    
