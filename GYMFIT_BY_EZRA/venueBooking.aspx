<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="venueBooking.aspx.cs" Inherits="GYMFIT.venueBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center">
       <b>BOOK A VENUE</b>
        <hr />
    </div>

    <div style="width: 49%; display:inline-block; vertical-align:top;">
        <div style="width: 49%; height: 50%; background-color: aqua; display:inline-block;">
            VENUE:<br />
            <asp:DropDownList ID="ddlVenue" runat="server" style="width:75%;" AutoPostBack="True"></asp:DropDownList>

        </div>
        <div style="width: 49%; height: 50%; background-color: yellow; display:inline-block;">
            PAX:<br />
            <asp:TextBox ID="tbPax" runat="server"></asp:TextBox>
            
        </div>
        <div style="width: 49%; height: 50%; background-color: aqua; display:inline-block;">
            DATE:<br />
                <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True" style="width:75%;"></asp:DropDownList>

        </div>
        <div style="width: 49%; height: 50%; background-color: yellow; display:inline-block;">
            TIME<br />
                <asp:DropDownList ID="ddlTime" runat="server" AutoPostBack="True" style="width:75%;"></asp:DropDownList>
        </div>
        <div style=""width: 99%;">
            PURPOSE:<br />
            <asp:TextBox ID="tbPurpose" runat="server" style="width:100%; height:50px;" TextMode="MultiLine"></asp:TextBox>

            <asp:RangeValidator ID="rvPax" Type="Integer" ControlToValidate="tbPax" MinimumValue="1" MaximumValue="50" 
                ErrorMessage="Venue cannot fit more than 50 people!" runat="server" style="color:red; font-weight:bold;" Display="Dynamic" ></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="rfvPax" runat="server" ControlToValidate="tbPax" ErrorMessage="Number of Pax required!" Display="Dynamic" style="color:red; font-weight:bold"></asp:RequiredFieldValidator>
            <asp:Button ID="btnVenueSubmit" runat="server" Text="BOOK NOW!" style="width:100%; -moz-border-radius: 15px;
                            -webkit-border-radius: 15px; border-radius: 15px; " OnClick="Button1_Click" />
        </div>

    </div>

    <div style="width: 49%; display:inline-block;" >

        ROOMS <br />
        AVAILABLE<br />

        <asp:Image ID="ImageYoga" runat="server" />
        <asp:Image ID="ImageFitness" runat="server" />
        <asp:Image ID="Image1" runat="server" />
    </div>
    
    
    
    
</asp:Content>


