<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindTrainer.aspx.cs" Inherits="GYMFIT.FindTrainer" %>
<asp:Content ID="FindTrainerPage" ContentPlaceHolderID="MainContent" runat="server">
    <div id="FindTrainer" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6 services-desc">
                    <div class="default-form login-form">
                        <h2>Choose A Trainer</h2>
                        <hr />
                        <div class="row">
                            <div class="col-md-8">
                                <p>Type of Trainers:</p>
                                <asp:DropDownList ID="DDLTrainerType" AutoPostBack="True" runat="server">

                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <p>Budget (RM):</p>
                                <asp:TextBox ID="TBBudget" placeholder="eg.2000" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:ListBox ID="LBTrainerResult" runat="server"></asp:ListBox>
                            </div>
                        </div>
                        <asp:Button id="BtnSelectTrainer" Text="Select Trainer" OnClick="BtnSelectTrainer_Click"  runat="server" />
                    </div>  
                </div>
                <div class="col-md-6 page-desc">
                    <h1>Get Your Personal Trainer</h1>
                    <p>We provide you the best trainer ever.</p>
                </div>
            </div>
        </div>
    </div>
 </asp:Content>
