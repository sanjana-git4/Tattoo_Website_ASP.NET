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
    public partial class PlaceOrder : System.Web.UI.Page
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
            Label2.Text = DateTime.Now.ToShortDateString();
            findorderId();  
        }
     
        public void findorderId()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[10];
            for(int i=0;i<10;i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid =  new String(mypass);
            Label1.Text = orderid;
            Session["order"] = orderid;


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

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
               
                String updatepass = "insert into Orders(orderId,sno,designId,designName,price,userId) values('" + Label1.Text + "' , " + dt.Rows[i]["sno"] + "," + dt.Rows[i]["designId"] + ", '" + dt.Rows[i]["designName"] + "' ,' " + dt.Rows[i]["price"] + "','" + Session["id"] + "' )";
        
                SqlConnection s = new SqlConnection(ConfigurationManager.ConnectionStrings["Tattoo_studio"].ConnectionString);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;

                cmd1.ExecuteNonQuery();

                s.Close();



            }
            Response.Redirect("payment.aspx");
        }
    }
}