<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Giohang2.ascx.cs" Inherits="Giohang2" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .header{
        text-align:center;
        font-weight:900;
        font-size:24px;
    }
    .tenDN{
        color:blue;
        font-size:23px;
        font-weight:600;
    }
    .ThanhTien{
        text-align:right;
    }
    .TongThanhTien{
        color:red;
        font-weight:500;
    }
    .tableGH{
        border-color:brown;
        color:brown;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="header" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="GIỎ HÀNG CỦA BẠN- "></asp:Label>
            <asp:Label ID="lbTenDN" runat="server" CssClass="tenDN"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="conten" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSach" CssClass="tableGH" OnRowCommand="GridView1_RowCommand1" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="MaSach" HeaderText="Mã sách" InsertVisible="False" ReadOnly="True" SortExpression="MaSach" />
                    <asp:BoundField DataField="TenSach" HeaderText="Tên sách" SortExpression="TenSach" />
                    <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" SortExpression="DonGia" DataFormatString="{0:,##0}" />
                    <asp:TemplateField HeaderText="Số lượng">
                        <ItemTemplate>
                            <asp:TextBox ID="tbSoLuong" runat="server" Height="16px" Text='<%# Eval("SoLuong") %>' Width="63px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" ReadOnly="True" SortExpression="ThanhTien" />
                    <asp:ButtonField ButtonType="Image" ImageUrl="~/Icon/Delete.jpg" Text="Xóa" />
                </Columns>
                <HeaderStyle BackColor="#990033" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT SACH.MaSach, SACH.TenSach, SACH.DonGia, CTDATHANG.SoLuong, CTDATHANG.ThanhTien FROM SACH INNER JOIN CTDATHANG ON SACH.MaSach = CTDATHANG.MaSach WHERE (SACH.MaSach = @MaSach)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaSach" QueryStringField="MaSach" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="ThanhTien" colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Tổng cộng: "></asp:Label>
            <asp:Label ID="lbTongThanhTien" runat="server" CssClass="TongThanhTien"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="button">
            <asp:Button ID="btTieptucmua" runat="server" Text="Tiếp tục mua" OnClick="btTieptucmua_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btXoagiohang" runat="server" Text="Xóa giỏ hàng" OnClick="btXoagiohang_Click" />
        </td>
        <td class="button">
            <asp:Button ID="btCapnhat" runat="server" Text="Cập nhật" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btThanhtoan" runat="server" Text="Thanh toán" OnClick="btThanhtoan_Click1" />
        </td>
    </tr>
</table>

