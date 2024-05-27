<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Sachtheonhaxuatban.ascx.cs" Inherits="Pages_SachTheoNhaXuatBan" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="SqlDataSource1" RepeatColumns="2" BorderColor="Black" BorderWidth="1px" GridLines="Both">
    <ItemTemplate>
        <div style="text-align: center; width: 100%">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Conponents/ChiTietSach.aspx?MaSach="+Eval("MaSach") %>' Text='<%# Eval("TenSach") %>'>
                         <asp:Label ID="TenSachLabel" runat="server" Text='<%# Eval("TenSach") %>' />
              </asp:HyperLink>
            <br />
            <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl='<%# "~/Images/"+Eval("HinhMinhHoa") %>' Width="180px" />
            <br />
            Đơn giá:
            <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
            <br />
            <div style="display: flex; align-items: center; justify-content: center">
                <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/Images/mua.png" %>' Width="25px" />
                Đặt mua
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT * FROM [SACH] WHERE ([MaNXB] = @MaNXB)">
    <SelectParameters>
        <asp:QueryStringParameter Name="MaNXB" QueryStringField="MaNXB" />
    </SelectParameters>
</asp:SqlDataSource>

