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
                                    <asp:ListItem Value="Yoga">Yoga</asp:ListItem>
                                    <asp:ListItem Value="Fitness">Fitness</asp:ListItem>
                                    <asp:ListItem Value="Dance">Dancing</asp:ListItem>
                                    <asp:ListItem Value="ALL">Any</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <p>Budget (RM):</p>
                                <asp:TextBox ID="TBBudget" placeholder="eg.2000" AutoPostBack="True" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row trainers-list">
                            <div class="col-md-12">
                                <asp:ListBox ID="LBTrainersResult" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceTrainers" DataTextField="sName" DataValueField="sId" OnSelectedIndexChanged="LBTrainersResult_SelectedIndexChanged"></asp:ListBox>
                                <asp:SqlDataSource ID="SqlDataSourceTrainers" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [sId], [sName], [sEmail], [tFees], [tType] FROM [Staff] WHERE (([tFees] &lt;= @tFees2) AND ([tType] = @tType)) ORDER BY [tFees] DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TBBudget" Name="tFees2" PropertyName="Text" Type="Double" DefaultValue="" />
                                        <asp:ControlParameter ControlID="DDLTrainerType" Name="tType" PropertyName="SelectedValue" Type="String" DefaultValue="" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 selected-trainer">
                                <asp:Label ID="LblSelectedTrainer" runat="server">Trainer Name</asp:Label>
                                <asp:Label ID="LblSelectedTrainerFees" runat="server">Fees</asp:Label>
                            </div>
                        </div>
                        <asp:Button id="BtnSelectTrainer" Text="Select Trainer"  runat="server" />

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
