<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GYMFIT.Home" %>
<asp:Content ID="HomeUser" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Home" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6 page-desc">
                    <h1>Get Membership</h1>
                    <p>We provide you the best trainer.</p>
                    <asp:Button ID="BtnGetMembership" CssClass="default-btn" Text="Get Membership" OnClick="BtnGetMembership_Click" runat="server"/>
                    <asp:Label ID="LblGetMembershipResult" runat="server"></asp:Label>
                </div>
                <div class="col-md-6 services-desc">
                    <asp:Panel ID="PanelMembershipPlansButtons" runat="server">
                        <asp:Button ID="BtnDailyPlanView" Text="Daily Plan" OnClick="BtnDailyPlanView_Click" runat="server" />
                        <asp:Button ID="BtnMonthlyPlanView" Text="Monthly Plan" OnClick="BtnMonthlyPlanView_Click" runat="server" />
                        <asp:Button ID="BtnAnnualPlanView" Text="Annual Plan" OnClick="BtnAnnualPlanView_Click" runat="server" />
                    </asp:Panel>
                    <asp:Panel ID="PanelMembershipPlans" runat="server">
                        <asp:MultiView ID="MVMembershipPlan" runat="server" ActiveViewIndex="0">
                            <asp:View runat="server">
                                <h2>Daily Plan</h2>
                                <p>RM 5 per day</p>
                                <asp:Button ID="BtnDailyPlan" Text="Apply Now" OnClick="BtnDailyPlan_Click" runat="server" />
                            </asp:View>
                            <asp:View runat="server">
                                <h2>Monthly Plan</h2>
                                <p>RM30 per month</p>
                                <asp:Button ID="BtnMonthlyPlan" Text="Apply Now" OnClick="BtnMonthlyPlan_Click" runat="server" />
                            </asp:View>
                            <asp:View runat="server">
                                <h2>Annual Plan</h2>
                                <p>RM300 per annum</p>
                                <asp:Button ID="BtnAnnualPlan" Text="Apply Now" OnClick="BtnAnnualPlan_Click" runat="server" />
                            </asp:View>
                        </asp:MultiView>
                    </asp:Panel>
                    <asp:Panel ID="PanelServices" runat="server" Visible="False">
                        <h2>Our Services</h2>
                        <p>We provide you the best services.</p>
                        <asp:HyperLink ID="TrainerLink" NavigateUrl="~/FindTrainer.aspx?membership=true" CssClass="service-trainer" runat="server">
                            <h2>Find a Trainer <i class="fa fa-angle-right"></i></h2>
                        </asp:HyperLink>
                        <asp:HyperLink ID="VenueBookingLink" NavigateUrl="~/Book-A-Venue.aspx?membership=true" CssClass="service-venuebooking" runat="server">
                            <h2>Book a Venue <i class="fa fa-angle-right"></i></h2>
                        </asp:HyperLink>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
