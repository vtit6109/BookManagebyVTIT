<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Dangky.ascx.cs" Inherits="Dangky" %>
<style type="text/css">
 
    .headerlogin{
        color:green;
       
    }

    .text{
        text-align:right;
    }

   
   
   
</style>

<body style="text-align: left">

<table cellpadding="2" class="auto-style1">
    <tr>
        <td colspan="2" style="text-align: center" class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="ĐĂNG KÝ THÀNH VIÊN"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label2" runat="server" Text="Họ và tên"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbHoTen" runat="server" Width="354px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau3" runat="server" ControlToValidate="tbHoTen" ErrorMessage="Họ và tên không được để trống!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label3" runat="server" Text="Giới tính"></asp:Label>
        </td>
        <td id="grbGioitinh">
            <asp:RadioButton ID="rbtNam" runat="server" Text="Nam" GroupName="gioitinh" ValidationGroup="rdlGioitinh" />
            <asp:RadioButton ID="rbtNu" runat="server" Text="Nữ" GroupName="gioitinh" ValidationGroup="rdlGioitinh" />
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label6" runat="server" Text="Địa chỉ"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbDiaChi" runat="server" Width="353px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label7" runat="server" Text="Điện thoại"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbDienThoai" runat="server" Width="273px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbEmail" runat="server" Width="327px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email không được để trống!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau4" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email không đúng định dạng!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Ngày sinh"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="đlNgay" runat="server">
                <asp:ListItem Selected="True">1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Tháng" runat="server" Text="Tháng"></asp:Label>
            <asp:DropDownList ID="ddlThang" runat="server">
                <asp:ListItem Selected="True">1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label12" runat="server" Text="Năm"></asp:Label>
            <asp:TextBox ID="tbNam" runat="server" Width="66px">2024</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau5" runat="server" ControlToValidate="tbMatKhau" ErrorMessage="Ngày sinh không được để trống!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td >
            <asp:Label ID="Label10" runat="server" Text="Tên đăng nhập"></asp:Label>
        </td>
        <td >
            <asp:TextBox ID="tbTenDangNhap" runat="server" Width="215px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau6" runat="server" ControlToValidate="tbTenDangNhap" ErrorMessage="Tên đăng nhập không được để trống!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label4" runat="server" Text="Mật khẩu"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbMatkhau" runat="server" Width="213px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau7" runat="server" ControlToValidate="tbMatKhau" ErrorMessage="Mật khẩu không được để trống!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="text">
            <asp:Label ID="Label5" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
        </td>
        <td >
            <asp:TextBox ID="tbMaukhaumoi" runat="server" Width="212px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau8" runat="server" ControlToValidate="tbMatKhau" ErrorMessage="vui lòng nhập lại mật khẩu!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatKhau9" runat="server" ControlToValidate="tbMaukhaumoi" ErrorMessage="Mật khẩu mới nhập lại sai!" ForeColor="Red">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td >&nbsp;</td>
        <td >
            <asp:Button ID="btnDangky" runat="server" OnClick="btnDangNhap_Click" Text="Đăng ký" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:Label ID="lblBaoLoi" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>



