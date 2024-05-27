using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Thanhtoan : System.Web.UI.UserControl
{
    int MaKH;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDN"] == null) Response.Redirect("~Layouts/Dangnhap.aspx");
        if(Session["GioHang"]==null) Response.Redirect("~Layouts/Giohang2.aspx");
        if (Session["TenDN"] != null)
        {
            string s = "select MaKH, HoTenKH, DiaChiKH, DienThoaiKH, Email from KHACHHANG where TenDN='" + Session["TenDN"].ToString() + "'";
            DataTable dt = XLDL.Docbang(s);
            if (dt.Rows.Count != 0)
            {
                MaKH = int.Parse(dt.Rows[0][1].ToString());
                lbHoten.Text = dt.Rows[0][1].ToString();
                lbDiachi.Text = dt.Rows[0][2].ToString();
                lbSDT.Text = dt.Rows[0][3].ToString();
                lbEmail.Text = dt.Rows[0][4].ToString();
            }
        }
        if (Session["GioHang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            System.Int32 Thongthanhtien = 0;
            foreach(DataRow r in dt.Rows)
            {
                r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToInt32(r["DonGia"]);
                Thongthanhtien += Convert.ToInt32(r["ThanhTien"]);
                lbTongtien.Text = Thongthanhtien.ToString();
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = DateTime.Today;
        }
    }

    protected void btdongy_Click(object sender, EventArgs e)
    {
        int httt, htgh;
        string ngaygiao, ngaydat, ten, diachi, dth;
        ngaydat = DateTime.Today.ToString();
        ngaygiao = Calendar1.SelectedDate.ToString();
        ten = tbNguoinhan.Text;
        diachi = tbDiachi.Text;
        dth = tbDienthoai.Text;
        Int32 tongThanhTien = Int32.Parse(lbTongtien.Text);
        if (rdbThanhtoantrc.Checked == true) httt = 1; else httt = 0;
        if (rdbGiaoTT.Checked == true) htgh = 1; else htgh = 0;
        try
        {
            string s = "insert into DONDATHANG(MaKH, NgayDatHang, HTGiaohang, TenNguoiNhan, DiaChiNhan, DienThoaiNhan, HTThanhToan, HTGiaohang, TriGia) values(" + MaKH + ", '" + ngaydat + "', '" + ngaygiao + "', '" + ten + "', '" + diachi + "', '" + dth + "', '" + httt + "', '" + htgh + "', '" + tongThanhTien + "' )";
            XLDL.ThucHienLenh(s);
            s = "select Max(SoHD) from DONDATHANG where MaKH=" + MaKH;
            int SoHD = int.Parse(XLDL.GetData(s).ToString());
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            int masach, soluong, dongia, thanhtien;
            for(int i=0; i < dt.Rows.Count; i++)
            {
                masach = int.Parse(dt.Rows[i]["MaSach"].ToString());
                soluong = int.Parse(dt.Rows[i]["SoLuong"].ToString());
                dongia = int.Parse(dt.Rows[i]["DonGia"].ToString());
                thanhtien = int.Parse(dt.Rows[i]["ThanhTien"].ToString());
                s = "insert into CTDATHANG(SoDH, MaSach, SoLuong, DonGia, ThanhTien) values(" + SoHD + ", " + masach + ", " + soluong + "', '" + dongia + "', " + thanhtien + ")";
                XLDL.ThucHienLenh(s);

            }
            Response.Redirect("~Layouts/Xacnhanhoadon.aspx");

        }
        catch
        {
            lbBaoloi.Text = " Xin cáo lỗi? <br> Quá trình cập nhật dữ liệu không thanh công!";
        }
    }
}