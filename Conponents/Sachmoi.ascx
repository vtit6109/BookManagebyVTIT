<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Sachmoi.ascx.cs" Inherits="Content_Sachmoi" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT TOP 8 [MaSach], [TenSach], [DonGia], [HinhMinhHoa] FROM [SACH] ORDER BY [NgayCapNhat] DESC
"></asp:SqlDataSource>

<table class="auto-style1">
    <tr>
        <td>
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Icon/tittle_sachmoi.gif" Width="100%" />
        </td>
    </tr>
    <tr>
        <td>

<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="2" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <ItemStyle BackColor="White" ForeColor="#330099" />
    <ItemTemplate>
        <br />
        <table class="auto-style1">
            <tr>
                <td>

                    
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Conponents/ChiTietSach.aspx?MaSach="+Eval("MaSach") %>' Text='<%# Eval("TenSach") %>'>
                        <asp:Label ID="TenSachLabel" runat="server" Text='<%# Eval("TenSach") %>' />
                    </asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/"+Eval("HinhMinhHoa") %>' />
                    <asp:Image ID="Image2" runat="server" Height="57px" ImageUrl="~/Icon/new.jpg" Width="64px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Đơn giá: &nbsp;<asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Icon/xehang.gif" />
                    <asp:HyperLink ID="HyperLink1" runat="server" style="color: #000000" NavigateUrl='<%# "~/Giohang2.aspx?Ms="+Eval("Masach") %>'>Đặt mua</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
</asp:DataList>
        </td>
    </tr>
</table>


