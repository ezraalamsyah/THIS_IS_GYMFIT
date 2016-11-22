<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GYMFIT.homeUser" %>
<asp:Content ID="HomeUser" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Home" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6 page-desc">
                    <h1>Get Your Personal Trainer</h1>
                    <p>We provide you the best trainer.</p>
                    <asp:Button ID="BtnGetMembership" CssClass="default-btn" Text="Get Membership" OnClick="BtnGetMembership_Click" runat="server"/>
                </div>
                <div class="col-md-6 services-desc">
                    <h2>Our Services</h2>
                    <p>Explanation</p>
                    <p>We provide you the best trainer.</p>
                    <asp:HyperLink ID="TrainerLink" NavigateUrl="~/FindTrainer.aspx" CssClass="service-trainer" runat="server">
                        <h2>Find a Trainer <i class="fa fa-angle-right"></i></h2>
                    </asp:HyperLink>
                    <asp:HyperLink ID="VenueBookingLink" NavigateUrl="~/Book-A-Venue.aspx" CssClass="service-venuebooking" runat="server">
                        <h2>Book a Venue <i class="fa fa-angle-right"></i></h2>
                    </asp:HyperLink>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
