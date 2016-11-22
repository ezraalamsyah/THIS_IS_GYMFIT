<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrainerPopup.aspx.cs" Inherits="GYMFIT_BY_EZRA.TrainerPopup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
</asp:Content>
<asp:Content ID="TrainerPopup" ContentPlaceHolderID="MainContent" runat="server">
    <asp:AdRotator ID="AdRotator1" DataSourceID="AdXmlDataSource" runat="server" />
    <asp:XmlDataSource ID="AdXmlDataSource" DataFile="~/App_Data/Ads.xml" runat="server"></asp:XmlDataSource>
</asp:Content>
