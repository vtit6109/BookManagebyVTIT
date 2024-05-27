using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;

public partial class Dangnhap : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnDangNhap.Focus();
    }



    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = XLDL.Docbang("SELECT * FROM KHACHHANG WHERE TenDN='" + tbTenDangNhap.Text + "' and Matkhau='" + tbMatKhau.Text + "' ");
            if (dt.Rows.Count != 0)
            {
                Session["TenDN"] = tbTenDangNhap.Text;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                lblBaoLoi.Text = "Tên đang nhập hoặc mật khẩu không hơp lệ!";
            }

        }
        catch
        {
            lblBaoLoi.Text = "Thất bại!";
        }
    }
}