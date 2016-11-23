<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GYMFIT.Register" %>
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
                        <asp:TextBox id="TBPassword" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                        <asp:TextBox id="TBConfirmPassword" TextMode="Password" placeholder="Confirm Password" runat="server"></asp:TextBox>
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
                        <asp:Label ID="LblRegisterStatus" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFVEmail" ControlToValidate="TBEmail" runat="server" ErrorMessage="Please enter Email"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RFVPassword" ControlToValidate="TBPassword" runat="server" ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RFVConfirmPassword" ControlToValidate="TBConfirmPassword" runat="server" ErrorMessage="Please Enter Confirm Password"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RFVFirstName" ControlToValidate="TBFirstName" runat="server" ErrorMessage="Please Enter First Name"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RFVLastName" ControlToValidate="TBLastName" runat="server" ErrorMessage="Please Enter Last Name"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RFVPhoneNo" ControlToValidate="TBPhoneNo" runat="server" ErrorMessage="Please Enter Phone Number"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CVCompare" ControlToValidate="TBPassword" ControlToCompare="TBConfirmPassword" runat="server" ErrorMessage="Password is not the same"></asp:CompareValidator>
                        
                        <asp:RegularExpressionValidator runat="server" id="REVFirstName" ControlToValidate="TBFirstName" ErrorMessage="Please enter a name." ValidationExpression="[a-zA-Z ]*$" />
                        <asp:RegularExpressionValidator runat="server" id="REVLastName" ControlToValidate="TBLastName" ErrorMessage="please enter a name." ValidationExpression="[a-zA-Z ]*$" />
                        <asp:ValidationSummary ID="VSSummary" runat="server" ShowMessageBox="true" DisplayMode="SingleParagraph" HeaderText="The input is incorrect" ShowSummary="false" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
