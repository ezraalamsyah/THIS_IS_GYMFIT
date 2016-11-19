<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trainerBooking.aspx.cs" Inherits="GYMFIT.trainerBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div style="text-align:center">
         <b>Choose a Trainer</b>
         <hr/>
     </div>


    <div style="width: 49%; display:inline-block; vertical-align:top;">
        <div style="display:inline-block; width:49%;">

            Type of Trainer:<br />

                <asp:DropDownList ID="DropDownList1" runat="server" style="width:75%;"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="DDLTrainerType" runat="server" ErrorMessage="Please Determine the Trainer Type"></asp:RequiredFieldValidator>
            
         </div>
        <div style="display:inline-block; width:49%;">
            Budget:<br />

                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TBBudget" runat="server" ErrorMessage="Please Enter your Budget"></asp:RequiredFieldValidator> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TBBudget" runat="server" ValidationExpression="^\d+$" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
        </div>

        <div>
            Results:
            <div>
                <asp:ListBox ID="lbQueryResult" runat="server" Width="100%"></asp:ListBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="LBResults" runat="server" ErrorMessage="Please pick your Trainer"></asp:RequiredFieldValidator>
            </div>

                <asp:Button ID="btnTrainerSubmit" runat="server" Text="BOOK NOW!" style="width:100%; -moz-border-radius: 15px;
                            -webkit-border-radius: 15px; border-radius: 15px; " OnClick="btnTrainerSubmit_Click" />
      
        </div>
     </div>
    
    <div style="width: 49%; display:inline-block; font-size:200%" >
         <div>    
             GET YOUR PERSONAL TRAINER
         </div>
        
        <div style="font-size:50%">
        We provide you the best trainer.
        </div>
    </div>


 </asp:Content>
