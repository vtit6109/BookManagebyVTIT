<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thanhtoan.aspx.cs" Inherits="Layouts_Thanhtoan" %>

<%@ Register src="Thanhtoan.ascx" tagname="Thanhtoan" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
    <uc1:Thanhtoan ID="Thanhtoan1" runat="server" />
</asp:Content>

