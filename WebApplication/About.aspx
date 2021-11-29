<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >

    <div class="row d-flex justify-content-center text-center">
        <div class="col-4 content">
           <h3>New City: </h3>
            <asp:ListBox ID="lstCities" runat="server" Rows="8" AutoPostBack="True" OnSelectedIndexChanged="lstCities_SelectedIndexChanged"></asp:ListBox>
        </div>
        <div class="col-4 content">
          <asp:TextBox ID="txtCity" runat="server" placeholder="Enter next city"></asp:TextBox>
        </div>
        <div class="col-4 content">
            <asp:Button ID="btnSubmit" runat="server" Text="Add City" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
        </div>
        <div class="col-4 content">
            <asp:Label ID="lblMessage" runat="server" Text="" CssClass="alert alert-danger"></asp:Label>
        </div>
     </div>
    
</asp:Content>
