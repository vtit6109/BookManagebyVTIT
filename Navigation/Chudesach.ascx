<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Chudesach.ascx.cs" Inherits="Components_ChuDeSach" %>
<style type="text/css">
    .table {
        width: 100%;
    }

    .item {
        padding: 4px 10px;
    }
</style>

<div style="width: 100%">
    <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataKeyNames="MaCD" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaCD" HeaderText="MaCD" InsertVisible="False" ReadOnly="True" SortExpression="MaCD" Visible="False" />
            <asp:BoundField DataField="TenChuDe" HeaderText="CHỦ ĐỀ SÁCH" SortExpression="TenChuDe" Visible="False">
                <HeaderStyle BackColor="Green" ForeColor="White" CssClass="item" />
                <ItemStyle BackColor="#66FF66" ForeColor="Green" CssClass="item" Font-Bold="True" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="MaCD" DataNavigateUrlFormatString="~/Conponents/Sachtheochude.aspx?MaCD={0}" DataTextField="TenChuDe" HeaderText="Chủ đề sách">
                <HeaderStyle Font-Bold="True" BackColor="Green" ForeColor="White" />
                <ItemStyle Font-Bold="True" CssClass="item" BackColor="#00CC00" ForeColor="Green" />
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT * FROM [CHUDE]"></asp:SqlDataSource>
</div>

