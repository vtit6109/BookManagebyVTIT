<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Doimatkhau.aspx.cs" Inherits="Layouts_Doimatkhau" %>

<%@ Register src="Doimatkhau.ascx" tagname="Doimatkhau" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
    <uc1:Doimatkhau ID="Doimatkhau1" runat="server" />
</asp:Content>

