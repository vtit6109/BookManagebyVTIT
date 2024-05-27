<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Ads.ascx.cs" Inherits="Components_Ads" %>
<style type="text/css">
    
    .auto-style5 {
        color: #FFFFFF;
        text-align: center;
        background-color: #990033;
    }
   
    

    
</style>

<table class="auto-style6">
    <tr>
        <td class="auto-style5">Quảng Cáo</td>
    </tr>
    <tr>
        <td>

<table class="auto-style1">
    <tr>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads.xml" Height="158px" CssClass="auto-style3" />

        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:AdRotator ID="AdRotator4" runat="server" AdvertisementFile="~/Ads.xml" Height="158px" CssClass="auto-style3" />

        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/Ads.xml" Height="158px" CssClass="auto-style3" />

        </td>
    </tr>
</table>


        </td>
    </tr>
</table>



