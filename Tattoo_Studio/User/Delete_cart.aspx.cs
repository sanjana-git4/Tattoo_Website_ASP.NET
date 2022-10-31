using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio.User
{
    public partial class Delete_cart : System.Web.UI.Page
    {
        string s;
        string t;
        string[] a = new string[4];
        int id;
        string design_name, price, image;
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("design_name"), new DataColumn("price"), new DataColumn("image"), new DataColumn("designId") });

            if (Request.Cookies["abc"] != null)
            {
                s = Convert.ToString(Request.Cookies["abc"].Value);
                string[] strArr = s.Split('|');

                for (int i = 0; i < strArr.Length; i++)
                {
                    t = Convert.ToString(strArr[i].ToString());

                    string[] strArr1 = t.Split(',');
                    for (int j = 0; j < strArr1.Length; j++)
                    {
                        a[j] = strArr1[j].ToString();
                    }
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), i.ToString());

                }

            }

            dt.Rows.RemoveAt(id);

            Response.Cookies["abc"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["abc"].Expires = DateTime.Now.AddDays(-1);


            foreach (DataRow dr in dt.Rows)
            {
                design_name = dr["design_name"].ToString();
                price = dr["price"].ToString();
                image = dr["image"].ToString();


                count = count + 1;


                if (count==1)
                {
                    Response.Cookies["abc"].Value = design_name.ToString() + "," +
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
            Response.Redirect("view_cart.aspx");
        }
    }
}