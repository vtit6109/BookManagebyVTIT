using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Xacnhanhoadon : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDN"] == null)
            Response.Redirect("Dangnhap.aspx");
        if (Session["Giohang"] == null)
            Response.Redirect("Giohang2.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}