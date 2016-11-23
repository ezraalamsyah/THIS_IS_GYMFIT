<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrainerInfo.aspx.cs" Inherits="GYMFIT_BY_EZRA.TrainerInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
</asp:Content>
<asp:Content ID="TrainerInfo" ContentPlaceHolderID="MainContent" runat="server">
    <div id="FindTrainer" class="trainer-info page-content">
        <div class="container">
            <h2>Trainer's Information</h2>
            <hr />
            <asp:Label ID="LiteralTrainerResult" runat="server"></asp:Label>
            <asp:AdRotator ID="AdRotator1" DataSourceID="AdXmlDataSource" runat="server" />
            <asp:XmlDataSource ID="AdXmlDataSource" DataFile="~/App_Data/Ads.xml" runat="server"></asp:XmlDataSource>
        </div>
    </div>
</asp:Content>
