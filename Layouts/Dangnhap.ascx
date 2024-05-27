<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Dangnhap.ascx.cs" Inherits="Dangnhap" %>
<style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .headerlogin{
        color:green;
        font-weight:900;
    }

</style>

<table cellpadding="2" class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center" class="headerlogin">
            <asp:Label ID="Label1" runat="server" Text="ĐĂNG NHẬP"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Tên đăng nhập:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbTenDangNhap" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTenDangNhap" runat="server" ControlToValidate="tbTenDangNhap" ErrorMessage="Tên Đăng nhập không được để trống!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
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
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng nhập" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="headerlogin">
            <asp:HyperLink ID="hplDoiMatKhau" runat="server" NavigateUrl="~/Layouts/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:Label ID="lblBaoLoi" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>

