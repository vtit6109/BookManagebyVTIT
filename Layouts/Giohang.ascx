    <%@ Control Language="VB" AutoEventWireup="false" CodeFile="Giohang.ascx.vb" Inherits="Section_right_Giohang" %>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .left{
            width:20%;
        }
        .right{
            width:80%;
        }
    </style>

    <table class="auto-style1">
        <tr>
            <td class="left">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Icon/Giohang.gif" />
            </td>
            <td class="right">Giỏ hàng của bạn</td>
        </tr>
        <tr>
            <td class="left">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Icon/Sotien.gif" />
            </td>
            <td class="right">Số tiền </td>
        </tr>
    </table>

