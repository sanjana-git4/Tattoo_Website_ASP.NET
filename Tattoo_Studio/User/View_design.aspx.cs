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
    public partial class View_design : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string x = Request.QueryString["category"];

            con.Open();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = System.Data.CommandType.Text;
            cmd1.CommandText = "select * from tblcategory";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            cat.DataSource = dt1;
            cat.DataBind();



            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;

            if (x == null)
            {
                cmd.CommandText = "select * from tblDesign";
            }
            else
            {
                cmd.CommandText = "select * from tblDesign where categoryId='" + Request.QueryString["category"].ToString() + "'";
            }


            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            c3.DataSource = dt;
            c3.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from tblDesign where (design_name like'%" + txtsearch.Text + "%')";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            c3.DataSource = dt;
            c3.DataBind();
        }
    }
}