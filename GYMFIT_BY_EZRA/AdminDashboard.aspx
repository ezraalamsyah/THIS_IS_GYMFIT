<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="GYMFIT_BY_EZRA.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="AdminDashboard" class="admin-page page-content">
        <div class="container">
            <asp:Button ID="BtnVenueBookings" Text="Venue Bookings" OnClick="BtnVenueBookings_Click" runat="server" />
            <asp:Button ID="BtnManageUsers" Text="Manage Users" OnClick="BtnManageUsers_Click" runat="server" />
            <asp:Button ID="BtnManageStaffs" Text="Manage Staffs" OnClick="BtnManageStaffs_Click" runat="server" />

            <asp:MultiView ID="MVAdminDashboard" runat="server" ActiveViewIndex="0">
                <asp:View ID="ViewVenueBookings" runat="server">
                    <h2>All Bookings</h2>
                    <asp:GridView ID="GVVenueBookings" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="vbId" DataSourceID="SqlDataSourceVenueBookings" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="bookingDate" HeaderText="Date" SortExpression="bookingDate" />
                            <asp:BoundField DataField="bookingStartTime" HeaderText="Starting Time" SortExpression="bookingStartTime" />
                            <asp:BoundField DataField="bookingEndTime" HeaderText="Ending Time" SortExpression="bookingEndTime" />
                            <asp:BoundField DataField="bookingStatus" HeaderText="Status" SortExpression="bookingStatus" />
                            <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose" />
                            <asp:BoundField DataField="vType" HeaderText="Venue Type" SortExpression="vType" />
                            <asp:BoundField DataField="pax" HeaderText="Pax" SortExpression="pax" />
                            <asp:BoundField DataField="vId" HeaderText="VenueID" SortExpression="vId" />
                            <asp:CommandField ButtonType="Button" HeaderText="Approve" ShowEditButton="True" ShowHeader="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceVenueBookings" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM [VenueBooking] WHERE [vbId] = @vbId" InsertCommand="INSERT INTO [VenueBooking] ([bookingDate], [bookingStartTime], [bookingCreatedDate], [bookingStatus], [bookingEndTime], [purpose], [vType], [pax], [cId], [vId]) VALUES (@bookingDate, @bookingStartTime, @bookingCreatedDate, @bookingStatus, @bookingEndTime, @purpose, @vType, @pax, @cId, @vId)" SelectCommand="SELECT [bookingDate], [bookingStartTime], [bookingCreatedDate], [vbId], [bookingStatus], [bookingEndTime], [purpose], [vType], [pax], [cId], [vId] FROM [VenueBooking] WHERE ([bookingStatus] = @bookingStatus) ORDER BY [bookingCreatedDate]" UpdateCommand="UPDATE [VenueBooking] SET [bookingDate] = @bookingDate, [bookingStartTime] = @bookingStartTime, [bookingCreatedDate] = @bookingCreatedDate, [bookingStatus] = @bookingStatus, [bookingEndTime] = @bookingEndTime, [purpose] = @purpose, [vType] = @vType, [pax] = @pax, [cId] = @cId, [vId] = @vId WHERE [vbId] = @vbId">
                        <DeleteParameters>
                            <asp:Parameter Name="vbId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="bookingDate" Type="DateTime" />
                            <asp:Parameter DbType="Time" Name="bookingStartTime" />
                            <asp:Parameter Name="bookingCreatedDate" Type="DateTime" />
                            <asp:Parameter Name="bookingStatus" Type="String" />
                            <asp:Parameter DbType="Time" Name="bookingEndTime" />
                            <asp:Parameter Name="purpose" Type="String" />
                            <asp:Parameter Name="vType" Type="String" />
                            <asp:Parameter Name="pax" Type="Int32" />
                            <asp:Parameter Name="cId" Type="Int32" />
                            <asp:Parameter Name="vId" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Pending" Name="bookingStatus" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="bookingDate" Type="DateTime" />
                            <asp:Parameter DbType="Time" Name="bookingStartTime" />
                            <asp:Parameter Name="bookingCreatedDate" Type="DateTime" />
                            <asp:Parameter Name="bookingStatus" Type="String" />
                            <asp:Parameter DbType="Time" Name="bookingEndTime" />
                            <asp:Parameter Name="purpose" Type="String" />
                            <asp:Parameter Name="vType" Type="String" />
                            <asp:Parameter Name="pax" Type="Int32" />
                            <asp:Parameter Name="cId" Type="Int32" />
                            <asp:Parameter Name="vId" Type="Int32" />
                            <asp:Parameter Name="vbId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <asp:View ID="ViewManageUsers" runat="server">
                    <h2>Customers</h2>
                    <asp:GridView ID="GVCustomers" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="cId" DataSourceID="SqlDataSourceCustomers" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="cId" HeaderText="cId" InsertVisible="False" ReadOnly="True" SortExpression="cId" />
                            <asp:BoundField DataField="cName" HeaderText="cName" SortExpression="cName" />
                            <asp:CheckBoxField DataField="cGender" HeaderText="cGender" SortExpression="cGender" />
                            <asp:BoundField DataField="cEmail" HeaderText="cEmail" SortExpression="cEmail" />
                            <asp:BoundField DataField="memberType" HeaderText="memberType" SortExpression="memberType" />
                            <asp:BoundField DataField="cPhoneNo" HeaderText="cPhoneNo" SortExpression="cPhoneNo" />
                            <asp:BoundField DataField="cAddress" HeaderText="cAddress" SortExpression="cAddress" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [cId], [cName], [cGender], [cEmail], [memberType], [cPhoneNo], [cAddress] FROM [Customer] ORDER BY [cId]" DeleteCommand="DELETE FROM [Customer] WHERE [cId] = @cId" InsertCommand="INSERT INTO [Customer] ([cName], [cGender], [cEmail], [memberType], [cPhoneNo], [cAddress]) VALUES (@cName, @cGender, @cEmail, @memberType, @cPhoneNo, @cAddress)" UpdateCommand="UPDATE [Customer] SET [cName] = @cName, [cGender] = @cGender, [cEmail] = @cEmail, [memberType] = @memberType, [cPhoneNo] = @cPhoneNo, [cAddress] = @cAddress WHERE [cId] = @cId">
                        <DeleteParameters>
                            <asp:Parameter Name="cId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="cName" Type="String" />
                            <asp:Parameter Name="cGender" Type="Boolean" />
                            <asp:Parameter Name="cEmail" Type="String" />
                            <asp:Parameter Name="memberType" Type="String" />
                            <asp:Parameter Name="cPhoneNo" Type="String" />
                            <asp:Parameter Name="cAddress" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="cName" Type="String" />
                            <asp:Parameter Name="cGender" Type="Boolean" />
                            <asp:Parameter Name="cEmail" Type="String" />
                            <asp:Parameter Name="memberType" Type="String" />
                            <asp:Parameter Name="cPhoneNo" Type="String" />
                            <asp:Parameter Name="cAddress" Type="String" />
                            <asp:Parameter Name="cId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <asp:View ID="ViewManageStaffs" runat="server">
                    <h2>Staffs</h2>
                    <asp:GridView ID="GVStaffs" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="sId" DataSourceID="SqlDataSourceStaffs" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="sId" HeaderText="sId" InsertVisible="False" ReadOnly="True" SortExpression="sId" />
                            <asp:BoundField DataField="sName" HeaderText="sName" SortExpression="sName" />
                            <asp:BoundField DataField="sEmail" HeaderText="sEmail" SortExpression="sEmail" />
                            <asp:BoundField DataField="sPhoneNo" HeaderText="sPhoneNo" SortExpression="sPhoneNo" />
                            <asp:BoundField DataField="sType" HeaderText="sType" SortExpression="sType" />
                            <asp:BoundField DataField="basicSalary" HeaderText="basicSalary" SortExpression="basicSalary" />
                            <asp:BoundField DataField="tFees" HeaderText="tFees" SortExpression="tFees" />
                            <asp:BoundField DataField="tType" HeaderText="tType" SortExpression="tType" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceStaffs" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [sId], [sName], [sEmail], [sPhoneNo], [sType], [basicSalary], [tFees], [tType] FROM [Staff] ORDER BY [sId]" DeleteCommand="DELETE FROM [Staff] WHERE [sId] = @sId" InsertCommand="INSERT INTO [Staff] ([sName], [sEmail], [sPhoneNo], [sType], [basicSalary], [tFees], [tType]) VALUES (@sName, @sEmail, @sPhoneNo, @sType, @basicSalary, @tFees, @tType)" UpdateCommand="UPDATE [Staff] SET [sName] = @sName, [sEmail] = @sEmail, [sPhoneNo] = @sPhoneNo, [sType] = @sType, [basicSalary] = @basicSalary, [tFees] = @tFees, [tType] = @tType WHERE [sId] = @sId">
                        <DeleteParameters>
                            <asp:Parameter Name="sId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="sName" Type="String" />
                            <asp:Parameter Name="sEmail" Type="String" />
                            <asp:Parameter Name="sPhoneNo" Type="String" />
                            <asp:Parameter Name="sType" Type="String" />
                            <asp:Parameter Name="basicSalary" Type="Double" />
                            <asp:Parameter Name="tFees" Type="Double" />
                            <asp:Parameter Name="tType" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="sName" Type="String" />
                            <asp:Parameter Name="sEmail" Type="String" />
                            <asp:Parameter Name="sPhoneNo" Type="String" />
                            <asp:Parameter Name="sType" Type="String" />
                            <asp:Parameter Name="basicSalary" Type="Double" />
                            <asp:Parameter Name="tFees" Type="Double" />
                            <asp:Parameter Name="tType" Type="String" />
                            <asp:Parameter Name="sId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
