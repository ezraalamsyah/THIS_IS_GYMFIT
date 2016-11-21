<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GYMFIT._Default" %>
<asp:Content ID="RegisterPage" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Register" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6 page-desc">
                    <h1>GET FIT or GET FAT</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
                    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                    nisi ut aliquip ex ea commodo consequat.</p>
                </div>
                <!-- 2ND HALF - REGISTRATION FORM -->
                <div class="col-md-6">
                    <div class="default-form login-form">
                        <h2>REGISTER NOW</h2>
                        <hr />
                        <asp:TextBox id="TBEmail" placeholder="Email" runat="server"></asp:TextBox>
                        <asp:TextBox id="TBPassword" placeholder="Password" runat="server"></asp:TextBox>
                        <asp:TextBox id="TBConfirmPassword" placeholder="Confirm Password" runat="server"></asp:TextBox>
                        <div class="row">
                        <div class="col-md-6">
                            <asp:TextBox id="TBFirstName" placeholder="First Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox id="TBLastName" placeholder="Last Name" runat="server"></asp:TextBox>
                        </div>
                        </div>
                        <div class="row">
                        <div class="col-md-4">
                            <asp:DropDownList id="DDLGender" runat="server">
                            <asp:ListItem value="0">Male</asp:ListItem>
                            <asp:ListItem Value="1">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox id="TBPhoneNo" placeholder="Phone Number" runat="server"></asp:TextBox>
                        </div>
                        </div>
                        <asp:TextBox id="TBAddress" placeholder="Address" runat="server"></asp:TextBox>
                        <asp:Button id="BtnRegister" runat="server" Text="REGISTER" OnClick="BtnRegister_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
