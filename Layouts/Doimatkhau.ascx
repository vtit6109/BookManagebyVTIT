<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Doimatkhau.ascx.cs" Inherits="Doimatkhau" %>
<style type="text/css">


    .auto-style1 {
        width: 100%;
    }
    .headerlogin{
        color:green;
        font-weight:900;
    }

  
    .text{
        text-align:right;
    }
</style>

<table cellpadding="2" class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center" class="headerlogin">
            <asp:Label ID="Label1" runat="server" Text="ĐỔI MẬT KHẨU"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label2" runat="server" Text="Tên đăng nhập:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbTenDangNhap" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTenDangNhap" runat="server" ControlToValidate="tbTenDangNhap" ErrorMessage="Tên đăng nhập không được để trống!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label3" runat="server" Text="Mật khẩu"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbMatKhau" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau" runat="server" ControlToValidate="tbMatKhau" ErrorMessage="Mật khẩu không được để trống!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="text"></td>
        <td >
            ---------------------</td>
        <td ></td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label4" runat="server" Text="Mật khẩu mới"></asp:Label>
        </td>
        <td >
            <asp:TextBox ID="tbMatkhaumoi" runat="server"></asp:TextBox>
        </td>
        <td >
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau0" runat="server" ControlToValidate="tbMatkhaumoi" ErrorMessage="Mật khẩu mới không được để trống!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label5" runat="server" Text="Nhập lại mật khẩu mới"></asp:Label>
        </td>
        <td >
            <asp:TextBox ID="tbMaukhaumoi2" runat="server"></asp:TextBox>
        </td>
        <td >
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau1" runat="server" ControlToValidate="tbMaukhaumoi2" ErrorMessage="Nhập lại mật khẩu mới không được để trống!" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau2" runat="server" ControlToValidate="tbMaukhaumoi2" ErrorMessage="Mật khẩu mới nhập lại sai !" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td >
            <asp:Button ID="btnDongy" runat="server" OnClick="btnDangNhap_Click" Text="Đồng ý" />
        </td>
        <td >&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:Label ID="lblBaoLoi" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>


