<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="venueBooking.aspx.cs" Inherits="GYMFIT.venueBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%">
        <tr>
            <td colspan="2">Book a Venue</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Venue:</td>
            <td>Pax:</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:280px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="280px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" Width="282px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Date:</td>
            <td>Time:</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="280px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Width="278px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Purpose:</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Width="901px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeaderContent">
    <style type="text/css">
        .auto-style1 {
            width: 602px;
        }
    </style>
</asp:Content>

