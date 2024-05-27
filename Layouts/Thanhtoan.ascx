<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Thanhtoan.ascx.cs" Inherits="Thanhtoan" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .headerbody{
        text-align:center;
        font-weight:900;
        font-size:24px;
        color:blue;
    }
    .auto-style2 {
        height: 23px;
    }
    .header{
        background-color:skyblue;
        text-align:center;
        font-weight:900;
    }
    .text{
        text-align:right;
        font-weight:600;
        padding-right:10px;
        width:30%;
    }
    .baoloi{
        text-align:center;
        font-weight:900;
        color:red;
    }
    .conten{
        width:70%;
        font-weight:400;
    }
    .n{
        text-align:right;
    }
    n2{
        width:100%;

    }
</style>

<table class="auto-style1">
    <tr>
        <td class="headerbody" colspan="2">
            <asp:Label ID="Label15" runat="server" Text="THÔNG TIN ĐƠN ĐẶT HÀNG"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="header" colspan="2">
            <asp:Label ID="Label16" runat="server" Text="THÔNG TIN TÀI KHOẢN"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label17" runat="server" Text="Họ tên:"></asp:Label>
            <br />
            <asp:Label ID="Label18" runat="server" Text="Địa chỉ:"></asp:Label>
            <br />
            <asp:Label ID="Label19" runat="server" Text="Điện thoại:"></asp:Label>
            <br />
            <asp:Label ID="Label20" runat="server" Text="Email:"></asp:Label>
        </td>
        <td class="conten">
            <asp:Label ID="lbHoten" runat="server" ForeColor="#3333CC"></asp:Label>
            <br />
            <asp:Label ID="lbDiachi" runat="server" ForeColor="#3333CC"></asp:Label>
            <br />
            <asp:Label ID="lbSDT" runat="server" ForeColor="#3333CC"></asp:Label>
            <br />
            <asp:Label ID="lbEmail" runat="server" ForeColor="#3333CC"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="header" colspan="2">
            <asp:Label ID="Label26" runat="server" Text="THÔNG TIN GIỎ HÀNG"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="n" colspan="2">
            <asp:GridView ID="GridView1" runat="server" CssClass="n2" Width="100%">
                <SelectedRowStyle BackColor="#CC0000" />
                <SortedAscendingCellStyle BackColor="#CC0066" />
                <SortedAscendingHeaderStyle BackColor="#CC0000" />
                <SortedDescendingCellStyle BackColor="#FF5050" />
                <SortedDescendingHeaderStyle BackColor="#CC0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:Label ID="Label25" runat="server" Text="Tổng tiên: "></asp:Label>
            <asp:Label ID="lbTongtien" runat="server" CssClass="baoloi"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="header" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="THÔNG TIN KHÁCH HÀNG"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label2" runat="server" Text="Ngày giao"></asp:Label>
        </td>
        <td class="conten">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label3" runat="server" Text="Người nhận"></asp:Label>
        </td>
        <td class="conten">
            <asp:TextBox ID="tbNguoinhan" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbNguoinhan" ErrorMessage="( )" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label4" runat="server" Text="Địa chỉ"></asp:Label>
        </td>
        <td class="conten">
            <asp:TextBox ID="tbDiachi" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbDiachi" ErrorMessage="( )" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label5" runat="server" Text="Điện thoại"></asp:Label>
        </td>
        <td class="conten">
            <asp:TextBox ID="tbDienthoai" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbDienthoai" ErrorMessage="( )" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbDienthoai" ErrorMessage="Số điện thoại không đúng" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="text" rowspan="2">
            <asp:Label ID="Label6" runat="server" Text="Hinh thức"></asp:Label>
            <br />
            <asp:Label ID="Label12" runat="server" Text="thanh toán:"></asp:Label>
        </td>
        <td class="conten">
            <asp:RadioButton ID="rdbThanhtoantrc" runat="server" GroupName="grbTT" Text="Thanh toán trước khi giao hàng" />
        </td>
    </tr>
    <tr>
        <td class="conten">
            <asp:RadioButton ID="rdbThanhtoansau" runat="server" GroupName="grbTT" Text="Thanh toán sau  khi giao hàng" />
        </td>
    </tr>
    <tr>
        <td class="text">&nbsp;</td>
        <td class="conten">&nbsp;</td>
    </tr>
    <tr>
        <td class="text" rowspan="2">
            <asp:Label ID="Label13" runat="server" Text="Hinh thức"></asp:Label>
            <br />
            <asp:Label ID="Label14" runat="server" Text="giao hàng:"></asp:Label>
        </td>
        <td class="conten">
            <asp:RadioButton ID="rdbGiaoTT" runat="server" GroupName="grdGiao" Text="Giao trực tiếp" />
        </td>
    </tr>
    <tr>
        <td class="conten">
            <asp:RadioButton ID="rdbChuyensgiao" runat="server" GroupName="grdGiao" Text="Chuyển giao" />
        </td>
    </tr>
    <tr>
        <td class="text">&nbsp;</td>
        <td class="conten">&nbsp;</td>
    </tr>
    <tr>
        <td class="baoloi" colspan="2">
            <asp:Label ID="lbBaoloi" runat="server" Text="lbBaoloi"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text">&nbsp;</td>
        <td class="conten">
            <asp:Button ID="btdongy" runat="server" Text="Đồng ý" OnClick="btdongy_Click" />
        </td>
    </tr>
</table>

