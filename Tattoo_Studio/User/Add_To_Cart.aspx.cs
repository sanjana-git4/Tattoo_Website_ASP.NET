using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;
using System.Reflection.Emit;

namespace Tattoo_Studio.User
{
    public partial class Add_To_Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("../SignIn1.aspx");
                }

                //Adding product to Gridview

                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("designid");
                dt.Columns.Add("design");
                dt.Columns.Add("designname");
                dt.Columns.Add("price");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);

                        SqlDataAdapter da = new SqlDataAdapter("SELECT [design_name], [price], [image], [designid] FROM [tblDesign] WHERE designid=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["designid"] = ds.Tables[0].Rows[0]["designid"].ToString();
                        dr["design"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["designname"] = ds.Tables[0].Rows[0]["design_name"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();


                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());


                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;


                        GridView1.FooterRow.Cells[3].Text = "Total Amount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                        Response.Redirect("Add_To_Cart.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);

                        SqlDataAdapter da = new SqlDataAdapter("SELECT [design_name], [price], [image], [designid] FROM [tblDesign] WHERE designid=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["designid"] = ds.Tables[0].Rows[0]["designid"].ToString();
                        dr["design"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["designname"] = ds.Tables[0].Rows[0]["design_name"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();

                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;


                        GridView1.FooterRow.Cells[3].Text = "Total Amount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                        Response.Redirect("Add_To_Cart.aspx");
                    }

                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[3].Text = "Total Amount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();


                    }
                }
               
            }

        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {

                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["price"].ToString());
                i = i + 1;
            }
            return totalprice;

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;

                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }


            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("Add_to_cart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("PlaceOrder.aspx");
        }
    }
}