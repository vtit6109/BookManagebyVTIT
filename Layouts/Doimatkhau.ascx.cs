using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Doimatkhau : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        try
        {
            string TenDN = tbTenDangNhap.Text;
            string MatKhau = tbMatKhau.Text;
            string MatKhauMoi = tbMatkhaumoi.Text;
            string MatKhauMoi2 = tbMaukhaumoi2.Text;
            string StrCnn = ConfigurationManager.ConnectionStrings["QLBanSachConnectionString"].ConnectionString.ToString();
            SqlConnection cnn = new SqlConnection(StrCnn);
            string LenhSQL = "SELECT * FROM KHACHHANG WHERE TenDN='" + tbTenDangNhap.Text + "' and Matkhau='" + tbMatKhau.Text + "' ";
            DataTable dt = XLDL.Docbang(LenhSQL);
            if (dt.Rows.Count == 0)
            {
                lblBaoLoi.Text = "Sai tên đăng nhập hoặc mật khẩu";
            }
            else
            {
                if (MatKhauMoi != MatKhauMoi2)
                {
                    lblBaoLoi.Text = "Mật khẩu mới không đúng";
                }
                else
                {
                    string str = "UPDATE KHACHHANG set MatKhau='" + MatKhauMoi + "' where TenDN='" + TenDN + "'";
                    XLDL.ThucHienLenh(str);
                    Response.Redirect("~/Dangnhap.aspx");
                }
            }
        }
        catch
        {
            lblBaoLoi.Text = "Thao tác cập nhật dữ liệu thất bại";
        }
    }
}