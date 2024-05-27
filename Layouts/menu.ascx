<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu.ascx.cs" Inherits="menu" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        
        text-align: right;
        /*padding-right:100px;*/
        background-color: #00FF00;
        height: 23px;
    }
    .auto-style3 {
        color: #FFFFFF;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style3" NavigateUrl="~/Default.aspx">Trang Chủ</asp:HyperLink>
            <span class="auto-style3">&nbsp;|&nbsp; </span>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style3" NavigateUrl="~/Conponents/Sachbanchay.aspx">Giới Thiệu</asp:HyperLink>
            <span class="auto-style3">&nbsp;|&nbsp; </span>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style3" NavigateUrl="~/Layouts/Dangky.aspx">Đăng Ký</asp:HyperLink>
            <span class="auto-style3">&nbsp;|&nbsp; </span>
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style3" NavigateUrl="~/Layouts/Dangnhap.aspx">Đăng Nhập</asp:HyperLink>
        </td>
    </tr>
</table>

