<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Sachbanchay.ascx.cs" Inherits="Components_SachBanNhieu" %>

<div>
    <h1 style="color: white; margin: 0; padding: 0; background-color: Green; text-align: center">Sách bán chạy</h1>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" ForeColor="Black" runat="server" NavigateUrl='<%# "~/Conponents/ChiTietSach.aspx?MaSach="+Eval("MaSach") %>' Text='<%# Eval("TenSach") %>'>
                <asp:Label ID="Label1" ForeColor="black" runat="server" Text='<%# Eval("TenSach") %>' />
            </asp:HyperLink><br /></ItemTemplate></asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT TOP 8 [TenSach], [MaSach], [SoLuongBan] FROM [SACH] ORDER BY [SoLuongBan] DESC"></asp:SqlDataSource>

</div>
