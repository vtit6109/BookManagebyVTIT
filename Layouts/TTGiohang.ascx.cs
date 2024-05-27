using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TTGiohang : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["GioHang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            System.Decimal Tongthanhtien = 0;
            foreach(DataRow r in dt.Rows)
            {
                r["Thanhtien"] = Convert.ToInt32(r["SoLuong"])*Convert.ToDecimal(r["Dongia"]);
                Tongthanhtien += Convert.ToDecimal(r["Thanhtien"]);
                lbSoTien.Text = "" + Tongthanhtien.ToString();
            }
        }
    }
}