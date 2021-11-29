<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>New City: </p>
    <asp:ListBox ID="lstCities" runat="server" Rows="8" AutoPostBack="True" OnSelectedIndexChanged="lstCities_SelectedIndexChanged"></asp:ListBox>
    <div>
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Add City" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
    </div>
    <div>
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
