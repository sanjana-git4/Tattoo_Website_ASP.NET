using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio.Staff
{
    public partial class Delete_review : System.Web.UI.Page
    {

        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("../SignIn1.aspx");
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);
            id = Convert.ToInt32(Request.QueryString["id"].ToString());


            using (SqlCommand cmd = new SqlCommand("delete from tblReview where reviewId=" + id + "", con))
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("View_review.aspx");
             
            }
        }
    }
}