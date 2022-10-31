using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio.Admin
{
    public partial class View_review : System.Web.UI.Page
    {
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
                using (SqlCommand cmd = new SqlCommand("SELECT tblUser.username, tblReview.description,tblReview.R_date FROM tblReview INNER JOIN tblUser ON tblReview.userId = tblUser.userId;", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        review.DataSource = dt;
                        review.DataBind();
                    }
                }
            }

        
    }
    }
}