<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book-A-Venue.aspx.cs" Inherits="GYMFIT.venueBooking" %>
<asp:Content ID="VenueBookingPage" ContentPlaceHolderID="MainContent" runat="server">
    <div id="VenueBooking" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="default-form login-form">
                        <h2>Book a Venue</h2>
                        <hr />
                        <div class="row">
                            <div class="col-md-8">
                                <p>Venue:</p>
                                <asp:DropDownList ID="DDLVenue" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="yoga">Yoga Room</asp:ListItem>
                                    <asp:ListItem Value="fitness">Fitness Room</asp:ListItem>
                                    <asp:ListItem Value="dancing">Dancing Room</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <p>Pax:</p>
                                <asp:TextBox ID="TBPax" placeholder="eg.20" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <p>Booking Date:</p>
                                <asp:Calendar ID="CalendarBookingDate" runat="server"></asp:Calendar>
                            </div>
                            <div class="col-md-6">
                                <p>Time (Max. 2 Hours):</p>
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:TextBox ID="TBStartTime" TextMode="Time" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>To</label>
                                    </div>
                                    <div class="col-md-5">
                                        <asp:TextBox ID="TBEndTime" TextMode="Time" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <p>Purpose:</p>
                                <asp:TextBox ID="TBPurpose" placeholder="eg. Bla" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Button id="BtnSubmitVenueBooking" runat="server" Text="Book a Venue" OnClick="BtnSubmitVenueBooking_Click"/>
                        <asp:Label ID="LblBookingResult" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFVPax" ControlToValidate="TBPax" runat="server" ErrorMessage="Please enter Number of People"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RFVStart" ControlToValidate="TBStartTime" runat="server" ErrorMessage="Please enter start time"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RFVend" ControlToValidate="TBEndTime" runat="server" ErrorMessage="Please enter end time"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RVPax" ControlToValidate="TBPax" MinimumValue="1" MaximumValue="50" ErrorMessage="Please enter from 1-50" runat="server"></asp:RangeValidator>
                        <asp:RegularExpressionValidator runat="server" id="REVPax" ControlToValidate="TBPax" ErrorMessage="please enter a number." ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator runat="server" id="REVStart" ControlToValidate="TBStartTime" ErrorMessage="please enter time in HH:MM." ValidationExpression="^(1[0-2]|0[1-9]):[0-5][0-9]\040(AM|am|PM|pm)$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator runat="server" id="REVEnd" ControlToValidate="TBEndTime" ErrorMessage="please enter time in HH:MM." ValidationExpression="^(1[0-2]|0[1-9]):[0-5][0-9]\040(AM|am|PM|pm)$"></asp:RegularExpressionValidator>
                    </div>  
                </div>
                <div class="col-md-6 page-desc">
                    <h1>Rooms Available</h1>
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Image ID="ImgYoga" ImageUrl="~/img/yoga-room.jpg" runat="server" />
                            <p>Yoga Room</p>
                        </div>
                        <div class="col-md-4">
                            <asp:Image ID="ImgFitness" ImageUrl="~/img/gym-room.jpg" runat="server" />
                            <p>Fitness Room</p>
                        </div>
                        <div class="col-md-4">
                            <asp:Image ID="ImgDance" ImageUrl="~/img/dancing-room.jpg" runat="server" />
                            <p>Dancing Room</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


