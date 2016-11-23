<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="GYMFIT.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Register" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12 page-desc">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="cId" DataSourceID="SqlDataSourceUser">
                        <EditItemTemplate>
                            cId:
                            <asp:Label ID="cIdLabel1" runat="server" Text='<%# Eval("cId") %>' />
                            <br />
                            cEmail:
                            <asp:TextBox ID="cEmailTextBox" runat="server" Text='<%# Bind("cEmail") %>' />
                            <br />
                            cName:
                            <asp:TextBox ID="cNameTextBox" runat="server" Text='<%# Bind("cName") %>' />
                            <br />
                            cGender:
                            <asp:CheckBox ID="cGenderCheckBox" runat="server" Checked='<%# Bind("cGender") %>' />
                            <br />
                            cPassword:
                            <asp:TextBox ID="cPasswordTextBox" runat="server" Text='<%# Bind("cPassword") %>' />
                            <br />
                            memberType:
                            <asp:TextBox ID="memberTypeTextBox" runat="server" Text='<%# Bind("memberType") %>' />
                            <br />
                            cAddress:
                            <asp:TextBox ID="cAddressTextBox" runat="server" Text='<%# Bind("cAddress") %>' />
                            <br />
                            cPhoneNo:
                            <asp:TextBox ID="cPhoneNoTextBox" runat="server" Text='<%# Bind("cPhoneNo") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            cEmail:
                            <asp:TextBox ID="cEmailTextBox" runat="server" Text='<%# Bind("cEmail") %>' />
                            <br />
                            cName:
                            <asp:TextBox ID="cNameTextBox" runat="server" Text='<%# Bind("cName") %>' />
                            <br />
                            cGender:
                            <asp:CheckBox ID="cGenderCheckBox" runat="server" Checked='<%# Bind("cGender") %>' />
                            <br />
                            cPassword:
                            <asp:TextBox ID="cPasswordTextBox" runat="server" Text='<%# Bind("cPassword") %>' />
                            <br />
                            memberType:
                            <asp:TextBox ID="memberTypeTextBox" runat="server" Text='<%# Bind("memberType") %>' />
                            <br />
                            cAddress:
                            <asp:TextBox ID="cAddressTextBox" runat="server" Text='<%# Bind("cAddress") %>' />
                            <br />
                            cPhoneNo:
                            <asp:TextBox ID="cPhoneNoTextBox" runat="server" Text='<%# Bind("cPhoneNo") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            cId:
                            <asp:Label ID="cIdLabel" runat="server" Text='<%# Eval("cId") %>' />
                            <br />
                            cEmail:
                            <asp:Label ID="cEmailLabel" runat="server" Text='<%# Bind("cEmail") %>' />
                            <br />
                            cName:
                            <asp:Label ID="cNameLabel" runat="server" Text='<%# Bind("cName") %>' />
                            <br />
                            cGender:
                            <asp:CheckBox ID="cGenderCheckBox" runat="server" Checked='<%# Bind("cGender") %>' Enabled="false" />
                            <br />
                            cPassword:
                            <asp:Label ID="cPasswordLabel" runat="server" Text='<%# Bind("cPassword") %>' />
                            <br />
                            memberType:
                            <asp:Label ID="memberTypeLabel" runat="server" Text='<%# Bind("memberType") %>' />
                            <br />
                            cAddress:
                            <asp:Label ID="cAddressLabel" runat="server" Text='<%# Bind("cAddress") %>' />
                            <br />
                            cPhoneNo:
                            <asp:Label ID="cPhoneNoLabel" runat="server" Text='<%# Bind("cPhoneNo") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [cId] = @cId" InsertCommand="INSERT INTO [Customer] ([cEmail], [cName], [cGender], [cPassword], [memberType], [cAddress], [cPhoneNo]) VALUES (@cEmail, @cName, @cGender, @cPassword, @memberType, @cAddress, @cPhoneNo)" SelectCommand="SELECT [cId], [cEmail], [cName], [cGender], [cPassword], [memberType], [cAddress], [cPhoneNo] FROM [Customer] WHERE ([cId] = @cId)" UpdateCommand="UPDATE [Customer] SET [cEmail] = @cEmail, [cName] = @cName, [cGender] = @cGender, [cPassword] = @cPassword, [memberType] = @memberType, [cAddress] = @cAddress, [cPhoneNo] = @cPhoneNo WHERE [cId] = @cId">
                        <DeleteParameters>
                            <asp:Parameter Name="cId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="cEmail" Type="String" />
                            <asp:Parameter Name="cName" Type="String" />
                            <asp:Parameter Name="cGender" Type="Boolean" />
                            <asp:Parameter Name="cPassword" Type="String" />
                            <asp:Parameter Name="memberType" Type="String" />
                            <asp:Parameter Name="cAddress" Type="String" />
                            <asp:Parameter Name="cPhoneNo" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:CookieParameter CookieName="GYMFITLoggedInId" Name="cId" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="cEmail" Type="String" />
                            <asp:Parameter Name="cName" Type="String" />
                            <asp:Parameter Name="cGender" Type="Boolean" />
                            <asp:Parameter Name="cPassword" Type="String" />
                            <asp:Parameter Name="memberType" Type="String" />
                            <asp:Parameter Name="cAddress" Type="String" />
                            <asp:Parameter Name="cPhoneNo" Type="String" />
                            <asp:Parameter Name="cId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
