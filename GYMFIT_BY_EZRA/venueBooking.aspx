<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="venueBooking.aspx.cs" Inherits="GYMFIT.venueBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div style="text-align:center">
        <b>BOOK A VENUE</b>
        <hr />
    </div>

    <div style="width: 49%; display:inline-block; vertical-align:top;">
        <div style="width: 49%; height: 50%; background-color: aqua; display:inline-block;">
            VENUE:<br />
            <asp:DropDownList ID="DropDownList1" runat="server" style="width:75%;"></asp:DropDownList>

        </div>
        <div style="width: 49%; height: 50%; background-color: yellow; display:inline-block;">
            PAX:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div style="width: 49%; height: 50%; background-color: aqua; display:inline-block;">
            DATE:<br />
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

        </div>
        <div style="width: 49%; height: 50%; background-color: yellow; display:inline-block;">
            TIME<br />
                <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
        </div>
        <div style=""width: 99%;">
            PURPOSE:<br />
            <asp:TextBox ID="TextBox2" runat="server" style="width:100%"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="BOOK NOW!" style="width:100%; -moz-border-radius: 15px;
                            -webkit-border-radius: 15px; border-radius: 15px; " />
        </div>

    </div>

    <div style="width: 49%; display:inline-block;" >

        ROOMS <br />
        AVAILABLE<br />

        <asp:Image ID="Image1" runat="server" />
        <asp:Image ID="Image2" runat="server" />
        <asp:Image ID="Image3" runat="server" />
    </div>
    
    
    
    
</asp:Content>


