<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sachmoi.aspx.cs" Inherits="Content_Sachmoi" %>

<%@ Register src="Sachmoi.ascx" tagname="Sachmoi" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder7">
    <uc1:Sachmoi ID="Sachmoi1" runat="server" />
</asp:Content>



