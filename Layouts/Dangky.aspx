<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Layouts_Dangky" %>

<%@ Register src="Dangky.ascx" tagname="Dangky" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
    <uc1:Dangky ID="Dangky1" runat="server" />
</asp:Content>

