using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio.User
{
    public partial class Add_Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("../SignIn1.aspx");
            }
            if (!IsPostBack)
            {
                BindArtist();

            }
        }
        private void BindArtist()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblArtist", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                txtartist.DataSource = dt;
                txtartist.DataTextField = "artistName";
                txtartist.DataValueField = "artistId";
                txtartist.DataBind();
                txtartist.Items.Insert(0, new ListItem("-Select-", "0"));

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString))
            {

                con.Open();


                    SqlCommand cmd = new SqlCommand("Insert into tblAppointment(A_date,email,contact,artistId,userId) Values('" + txtdate.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtartist.SelectedItem.Value + "','" + Session["id"] + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Appointment Recived Successfully ');  </script>");
                    clr();
                    con.Close();
               

            }

        }
        private void clr()
        {
            txtdate.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtcontact.Text = string.Empty;
          

        }
    }
}
    
