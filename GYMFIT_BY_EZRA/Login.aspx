<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GYMFIT.Login" %>
<asp:Content ID="LoginPage" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Login" class="page-content">
        <div class="container">
            <div class="row">
                <!-- 1ST HALF - LOGIN FORM -->
                <div class="col-md-6">
                    <div class="default-form login-form">
                        <h2>LOGIN INTO YOUR ACCOUNT</h2>
                        <hr />
                        <asp:TextBox id="TBEmail" placeholder="Email" runat="server"></asp:TextBox>
                        <asp:TextBox id="TBPassword" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                        <asp:Button id="BtnLogin" runat="server" Text="LOG IN" OnClick="BtnLogin_Click" />
                        <asp:Label id="LblLoginStatus" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFVEmail" ControlToValidate="TBEmail" runat="server" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RFVPassword" ControlToValidate="TBPassword" runat="server" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                    </div>  
                </div>
                <!-- 2ND HALF - LOGIN DESCRIPTION -->
                <div class="col-md-6 page-desc">
                    <h1>GET FIT NOW</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
                    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                    nisi ut aliquip ex ea commodo consequat.
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
