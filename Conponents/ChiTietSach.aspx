<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chitietsach.aspx.cs" Inherits="Pages_ChiTietSach" %>

<%@ Register src="ChiTietSach.ascx" tagname="ChiTietSach" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ChiTietSach ID="ChiTietSach1" runat="server" />
</asp:Content>

