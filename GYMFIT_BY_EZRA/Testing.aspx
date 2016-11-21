<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="GYMFIT_BY_EZRA.Testing" %>
<asp:Content ID="Testing" ContentPlaceHolderID="MainContent" runat="server">
<br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceTrainers" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [sId], [sName], [basicSalary], [sType] FROM [Staff] WHERE ([sType] = @sType)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Trainer" Name="sType" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListBox ID="LBTrainers" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceTrainers" DataTextField="sName" DataValueField="sId" OnSelectedIndexChanged="Trainer_SelectedIndexChanged"></asp:ListBox>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="sId" DataSourceID="SqlDataSourceTrainers">
        <EditItemTemplate>
            sId:
            <asp:Label ID="sIdLabel1" runat="server" Text='<%# Eval("sId") %>' />
            <br />
            sName:
            <asp:TextBox ID="sNameTextBox" runat="server" Text='<%# Bind("sName") %>' />
            <br />
            basicSalary:
            <asp:TextBox ID="basicSalaryTextBox" runat="server" Text='<%# Bind("basicSalary") %>' />
            <br />
            sType:
            <asp:TextBox ID="sTypeTextBox" runat="server" Text='<%# Bind("sType") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            sId:
            <asp:TextBox ID="sIdTextBox" runat="server" Text='<%# Bind("sId") %>' />
            <br />
            sName:
            <asp:TextBox ID="sNameTextBox" runat="server" Text='<%# Bind("sName") %>' />
            <br />
            basicSalary:
            <asp:TextBox ID="basicSalaryTextBox" runat="server" Text='<%# Bind("basicSalary") %>' />
            <br />
            sType:
            <asp:TextBox ID="sTypeTextBox" runat="server" Text='<%# Bind("sType") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            sId:
            <asp:Label ID="sIdLabel" runat="server" Text='<%# Eval("sId") %>' />
            <br />
            sName:
            <asp:Label ID="sNameLabel" runat="server" Text='<%# Bind("sName") %>' />
            <br />
            basicSalary:
            <asp:Label ID="basicSalaryLabel" runat="server" Text='<%# Bind("basicSalary") %>' />
            <br />
            sType:
            <asp:Label ID="sTypeLabel" runat="server" Text='<%# Bind("sType") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sId" DataSourceID="SqlDataSourceTrainers">
        <Columns>
            <asp:BoundField DataField="sId" HeaderText="sId" ReadOnly="True" SortExpression="sId" />
            <asp:BoundField DataField="sName" HeaderText="sName" SortExpression="sName" />
            <asp:BoundField DataField="basicSalary" HeaderText="basicSalary" SortExpression="basicSalary" />
            <asp:BoundField DataField="sType" HeaderText="sType" SortExpression="sType" />
        </Columns>
    </asp:GridView>
    <asp:DropDownList ID="DDL" runat="server" DataSourceID="SqlDataSourceTrainers" DataTextField="sName" DataValueField="sId" AutoPostBack="True" OnSelectedIndexChanged="Trainer_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <asp:Label ID="LblSelectedIndex" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LblSelectedItem" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LblSelectedValue" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
</asp:Content>
