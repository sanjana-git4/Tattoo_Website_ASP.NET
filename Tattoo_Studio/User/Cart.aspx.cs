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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);
        int id;
        string design_name, price, image;

        protected void btn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tblDesign where designId=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                design_name = dr["design_name"].ToString();
                price = dr["price"].ToString();
                image = dr["image"].ToString();
                
             
            }
            con.Close();

            if (Request.Cookies["abc"] == null)
            {
                Response.Cookies["abc"].Value = design_name.ToString() + ","  +
                    price.ToString() + "," + image.ToString();
                Response.Cookies["abc"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["abc"].Value = Request.Cookies["abc"].Value + "|" + design_name.ToString() + "," + 
                  price.ToString() + "," + image.ToString();
                Response.Cookies["abc"].Expires = DateTime.Now.AddDays(1);
            }
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("View_design.aspx");
            }
            else
            {
                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from tblDesign where designId=" + id + "";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                con.Close();
            }
        }
    }
}