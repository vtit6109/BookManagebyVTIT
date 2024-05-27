<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Ads1.ascx.vb" Inherits="Section_right_Ads1" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
</style>
<table class="auto-style1">
    <tr>
        <td class="auto-style2">Quảng cáo</td>
    </tr>
    <tr>
        <td>
            <asp:AdRotator ID="AdRotator4" runat="server" AdvertisementFile="~/Ads.xml" Width="350px" />
            <br />
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/Ads.xml" Width="350px" />
            <br />
            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/Ads.xml" Width="350px" />
        </td>
    </tr>
</table>


