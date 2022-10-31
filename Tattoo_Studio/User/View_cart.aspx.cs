using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tattoo_Studio.User
{
    public partial class View_cart : System.Web.UI.Page
    {
        string s;
        string t;
        string[] a = new string[4];
        int tot = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(),  i.ToString());

                    tot = tot + (Convert.ToInt32(a[1].ToString()));
                }

            }
            d1.DataSource = dt;
            d1.DataBind();

            l1.Text = "you have to pay=" + tot.ToString();
        }

    }
}