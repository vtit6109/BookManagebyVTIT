<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TTGiohang.ascx.cs" Inherits="TTGiohang" %>
<style type="text/css">

    .bodyQC{
        width:100%;
        color:saddlebrown;
        background-color:yellow;
        
    }
    .giohang{
        font-weight:700;
    }
    .sotien{
        font-weight:900;
    }
    </style>

<table class="bodyQC" style="border:solid 1px brown">
    <tr>
        <td class="giohang">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Icon/Giohang.gif" />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="giohang" NavigateUrl="~/Layouts/Giohang2.aspx">Giỏ Hàng của bạn</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="sotien">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Icon/Sotien.gif" />
            <asp:Label ID="lblsotien" runat="server" Text="Tổng tiền là"></asp:Label>
            :
            <asp:Label ID="lbSoTien" runat="server" Text="0"></asp:Label>
        </td>
    </tr>
</table>


