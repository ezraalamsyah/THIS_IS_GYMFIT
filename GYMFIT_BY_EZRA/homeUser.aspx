<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homeUser.aspx.cs" Inherits="GYMFIT.homeUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="width: 49%; display:inline-block;"">
        <div style="font-size:200%;">    
           GET YOUR PERSONAL TRAINER
        </div>
        
        <div style="font-size:125%">
         We provide you the best trainer.
        </div>
        <asp:Button ID="btnGetMember" runat="server" Text="GET MEMBERSHIP" style="width:75%; margin-top:15px;"/>
    </div>

    <div style="width:49%; display:inline-block; vertical-align:top">
        <div style="font-size:200%;">
            OUR SERVICES
        </div>
        <div style="font-size:125%">
                Insert explaination
        </div>

        <div style="margin-top:15px;">
        <asp:ImageButton ID="btnTrainer" runat="server" Height="16px" OnClick="btnTrainer_Click" />
        <br />
        <asp:ImageButton ID="btnVenue" runat="server" OnClick="btnVenue_Click" style="width: 14px" />
        </div>
    </div>


</asp:Content>
