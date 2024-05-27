<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Chitietsach.ascx.cs" Inherits="Pages_ChiTietSach" %>
<style type="text/css">
    td {
        vertical-align: top;
    }
</style>

<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="MaSach">
    <ItemTemplate>
        <table cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td style="width: 100%" colspan="2" style="background-color: red">
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Text='<%# Eval("TenSach") %>' />
                </td>
            </tr>
            <tr>
                <td style="width: 20%" >
                    <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl='<%# "~/Images/"+Eval("HinhMinhHoa") %>' Width="180px" />
                </td>
                <td style="width: 80%">Tên tác giả:
                    <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text='<%# Eval("TenTG") %>' />
                    <br />
                    Nhà xuất bản:
                    <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text='<%# Eval("TenNXB") %>' />
                    <br />
                    Chủ đề:
                    <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text='<%# Eval("TenChuDe") %>' />
                </td>
            </tr>
            <tr>
                <td style="width: 100%" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("MoTa") %>' />
                </td>
            </tr>
            <tr>
                <td style="%"></td>
                <td style="; text-align: right">Giá bán:
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("DonGia") %>' />
                </td>
            </tr>
            <tr>
                <td style="">&nbsp;</td>
                <td style="display: flex; align-items: center; justify-content: flex-end">
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/Images/mua.png" %>' Width="25px" />
                    Đặt mua</td>
            </tr>
        </table>

    </ItemTemplate>

</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT s.MaSach, s.TenSach, s.HinhMinhHoa, tg.TenTG, nxb.TenNXB, cd.TenChuDe, s.MoTa, s.DonGia FROM SACH AS s LEFT OUTER JOIN NHAXUATBAN AS nxb ON s.MaNXB = nxb.MaNXB LEFT OUTER JOIN CHUDE AS cd ON s.MaCD = cd.MaCD LEFT OUTER JOIN VIETSACH AS vs ON s.MaSach = vs.MaSach INNER JOIN TACGIA AS tg ON vs.MaTG = tg.MaTG WHERE (s.MaSach = @MaSach)">
    <SelectParameters>
        <asp:QueryStringParameter Name="MaSach" QueryStringField="MaSach" DefaultValue="1" />
    </SelectParameters>
</asp:SqlDataSource>

