using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Giohang2 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["TenDN"] == null) Response.Redirect("~/Layouts/Dangnhap.aspx");
            if (Request.QueryString["Ms"] != null) 
            {
                int Masach = int.Parse(Request.QueryString["Ms"]);
                DataTable dt = XLDL.Docbang("select TenSach,DonGia from SACH where MaSach=" + Masach);
                string Tensach = dt.Rows[0][0].ToString();
                int dongia =(int)Double.Parse (dt.Rows[0][1].ToString());
               
                int soluong = 1;
                lbTenDN.Text = Session["TenDN"].ToString();
                ThemVaoGioHang(Masach, Tensach, dongia , soluong);
            }
            if (Session["GioHang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.Decimal tongThanhTien = 0;
                foreach(DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                    tongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                    lbTongThanhTien.Text = tongThanhTien.ToString();
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
    public void ThemVaoGioHang(int Masach, string Tensach, int Dongia, int Soluong)
    {
        int dongia = Convert.ToInt32(Dongia);
        DataTable dt;
        if (Session["GioHang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("MaSach");
            dt.Columns.Add("TenSach");
            dt.Columns.Add("DonGia");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("ThanhTien");
        }
        else
        {
            dt = (DataTable)Session["GioHang"];
        }
        int dong = SPdacotronggiohangchua(Masach, dt);
        if (dong != -1)
        {
            dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + Soluong;
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["MaSach"] = Masach;
            dr["TenSach"] = Tensach;
            dr["DonGia"] = Dongia;
            dr["SoLuong"] = Soluong;
            dr["ThanhTien"] = dongia * Soluong;
            dt.Rows.Add(dr);
        }
        Session["GioHang"] = dt;
    }
    public static int SPdacotronggiohangchua(int Masach, DataTable dt)
    {
        int dong = -1;
        for(int i=0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i]["MaSach"].ToString()) == Masach)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }

    protected void btThanhtoan_Click(object sender, EventArgs e)
    {

    }

    protected void btCapnhat_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["GioHang"];
        foreach(GridViewRow r in GridView1.Rows)
        {
            foreach(DataRow dr in dt.Rows)
            {
                if (Convert.ToString(GridView1.DataKeys[r.DataItemIndex].Value) == dr["MaSach"].ToString())
                {
                    TextBox t = (TextBox)r.Cells[2].FindControl("tbSoLuong");
                    if (Convert.ToInt32(t.Text) <= 0)
                    {
                        dt.Rows.Remove(dr);
                    }
                    else
                    {
                        dr["SoLuong"] = t.Text;
                    }
                    break;
                }
            }
        }
        Session["GioHang"] = dt;
        Response.Redirect("~/Layouts/Giohang2.aspx");
    }

    protected void btTieptucmua_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void btXoagiohang_Click(object sender, EventArgs e)
    {
        Session["GioHang"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Nutxoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["GioHang"];
                dt.Rows.RemoveAt(chiso);
                Response.Redirect("~/Layouts/Giohang2.aspx");
            }
            catch
            {
                Response.Redirect("~/Layouts/Giohang2.aspx");
            }
        }
    }

    protected void btThanhtoan_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Layouts/Thanhtoan.aspx");
    }
}