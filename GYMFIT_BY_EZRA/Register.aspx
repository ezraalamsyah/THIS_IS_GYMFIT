<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GYMFIT.Register" %>
<asp:Content ID="RegisterPage" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Register" class="page-content">
        <div class="container">
            <div class="row">
                <!-- 1ST HALF - LOGIN FORM -->
                <div class="col-md-6">
                    <div class="default-form login-form">
                        <h2>LOGIN INTO YOUR ACCOUNT</h2>
                        <hr />
                        <asp:TextBox id="TBEmail" runat="server">Email</asp:TextBox>
                        <asp:TextBox id="TBPassword" runat="server">Password</asp:TextBox>
                        <asp:Button id="BtnLogin" runat="server" Text="REGISTER" OnClick="BtnLogin_Click" />
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
