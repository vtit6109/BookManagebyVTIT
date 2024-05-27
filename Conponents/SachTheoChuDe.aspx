<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sachtheochude.aspx.cs" Inherits="Pages_SachTheoChuDe" %>

<%@ Register src="SachTheoChuDe.ascx" tagname="SachTheoChuDe" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
    <uc1:SachTheoChuDe ID="SachTheoChuDe1" runat="server" />
</asp:Content>

