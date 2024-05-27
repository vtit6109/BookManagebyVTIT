using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Dangky : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        try
        {
            string TenDN = tbTenDangNhap.Text;
            string MatKhau = tbMatkhau.Text;
            string HoTen = tbHoTen.Text;
            string DiaChi = tbDiaChi.Text;
            string DienThoai = tbDienThoai.Text;
            string NgaySinh = ddlThang.Text + "/" + đlNgay.Text + "/" + tbNam.Text;
            String GT=" ";
            if (rbtNam.Checked)
            {
                GT = "1";
            }
            else if(rbtNu.Checked)
            {
                GT = "0"; 
            }
            
            string Email = tbEmail.Text;
            string StrCnn = ConfigurationManager.ConnectionStrings["QLBanSachConnectionString"].ConnectionString.ToString();
            SqlConnection cnn = new SqlConnection(StrCnn);
            cnn.Open();
            string str= "insert into KHACHHANG(HoTenKH, DiaChiKH, DienThoaiKH, Email, TenDN, MatKhau, NgaySinh, GioiTinh) values(N'"+HoTen+"', N'"+DiaChi+"', '"+DienThoai+"', '"+Email+"', '"+TenDN+"', '"+MatKhau+"', '"+NgaySinh+"', "+GT+");";
            
            XLDL.ThucHienLenh(str);
            Response.Redirect("~/Layouts/Dangnhap.aspx");
        }
        catch
        {
            lblBaoLoi.Text = "thất bại!";
        }
    }
}