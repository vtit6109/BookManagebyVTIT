<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Sachtheochude.ascx.cs" Inherits="Pages_SachTheoChuDe" %>
<asp:DataList ID="DataList1" runat="server" BorderColor="Black" BorderWidth="1px" DataKeyField="MaSach" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="2">
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT * FROM [SACH] WHERE ([MaCD] = @MaCD)">
    <SelectParameters>
        <asp:QueryStringParameter Name="MaCD" QueryStringField="MaCD" />
    </SelectParameters>
</asp:SqlDataSource>

