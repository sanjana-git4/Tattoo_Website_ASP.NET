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
    public partial class payment : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Insert into tblPayment(Card_owner,CVV,Card_number,ex_year,ex_month,payment) Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList1.SelectedItem.Value + "','" + Session["total"]+"')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Payement Recived Successfully ');window.location = 'View_design.aspx'</script>");
                clr();
                con.Close();

            }
         

        }
        private void clr()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
  

        }
    }
    }
