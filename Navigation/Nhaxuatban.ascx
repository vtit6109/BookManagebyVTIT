<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Nhaxuatban.ascx.cs" Inherits="Components_NhaXuatBan" %>

<style>
    .table {
        width: 100%;
    }

    .item {
        padding: 4px 10px
    }
</style>
<div style="width: 100%">

    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="MaNXB" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaNXB" HeaderText="MaNXB" InsertVisible="False" ReadOnly="True" SortExpression="MaNXB" Visible="False" />
            <asp:BoundField DataField="TenNXB" HeaderText="Nhà xuất bản" SortExpression="TenNXB" Visible="False">
                <HeaderStyle BackColor="Green" ForeColor="White" />
                <ItemStyle BackColor="#66FF66" ForeColor="Green" Font-Bold="true" CssClass="item" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="MaNXB" DataNavigateUrlFormatString="~/Conponents/Sachtheonhaxuatban.aspx?MaNXB={0}" DataTextField="TenNXB" HeaderText="Nhà xuất bản">
                <HeaderStyle BackColor="Green" ForeColor="White" Font-Bold="true" />
                <ItemStyle BackColor="#00CC00" ForeColor="green" CssClass="item" Font-Bold="true" />
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT [MaNXB], [TenNXB] FROM [NHAXUATBAN]"></asp:SqlDataSource>

</div>
