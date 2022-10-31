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

namespace Tattoo_Studio.Staff
{
    public partial class Add_Design : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("../SignIn1.aspx");
            }
            if (!IsPostBack)
            {
                BindCategory();
               
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);
            if (txtimage.HasFile)
            {
                string strname = txtimage.FileName.ToString();
                txtimage.PostedFile.SaveAs(Server.MapPath("../images/") + strname);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tblDesign values('" + txtdesign.Text + "','" + txtprice.Text + "','" + strname + "','"+txtCatID.SelectedItem .Value  +"')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Adding Successfully done ');  </script>");
                txtdesign.Text = string.Empty;
              
                txtprice.Text = string.Empty;
                

            }
            else
            {
                Response.Write("<script> alert('Adding Unsuccessfull ');  </script>");
            }

            }

        private void BindCategory()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblcategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                txtCatID.DataSource = dt;
                txtCatID.DataTextField = "category_name";
                txtCatID.DataValueField = "categoryId";
                txtCatID.DataBind();
                txtCatID.Items.Insert(0, new ListItem("-Select-", "0"));
            
            }




        }
    }
       
    }
