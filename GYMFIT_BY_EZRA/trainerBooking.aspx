<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trainerBooking.aspx.cs" Inherits="GYMFIT.trainerBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <div>
     <div align="center">
         Choose a Trainer
     </div>
     <hr/>

    <div style="float:left; width:50%;">
        <div style="float:left; width:50%;">

            Type of Trainer:
            <div align ="left">
                <asp:DropDownList ID="DDLTrainerType" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                
            </div>
            <asp:RequiredFieldValidator ID="RFVTrainerType" ControlToValidate="DDLTrainerType" runat="server" ErrorMessage="Please Determine the Trainer Type"></asp:RequiredFieldValidator>
         </div>
            
        <div style="float:right; width:49%;">
            Budget:
            <div align ="left">
                <asp:TextBox ID="TBBudget" runat="server" OnTextChanged="TBBudget_TextChanged"></asp:TextBox>
             <div>
             <asp:RequiredFieldValidator ID="RFVBudget" ControlToValidate="TBBudget" runat="server" ErrorMessage="Please Enter your Budget"></asp:RequiredFieldValidator> </div>
            <asp:RegularExpressionValidator ID="REVBudget" ControlToValidate="TBBudget" runat="server" ValidationExpression="^\d+$" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator></div>
        
        </div>
        
     <div>
            Results:
            <div>
                <asp:ListBox ID="LBResults" runat="server" Width="457px" OnSelectedIndexChanged="LBResults_SelectedIndexChanged"></asp:ListBox>
            </div>
         <asp:RequiredFieldValidator ID="RFVResults" ControlToValidate="LBResults" runat="server" ErrorMessage="Please pick your Trainer"></asp:RequiredFieldValidator>
            <div>
    
     </div>

            <div align ="center">
                <asp:Button ID="BtnSubmit" runat="server" Text="SELECT TRAINER" BackColor="Red" OnClick="BtnSubmit_Click" />
     </div>
            
        </div>
    </div>
     <div style="float:right; width:49%;">
         GET YOUR PERSONAL TRAINER

         </div>
     <div>
        We provide you the best trainer.
     </div>

     <div>
    
     </div>

     <div>
    
     </div>
     <div>
    
     </div>
     <div>
    
     </div>
     <div>
    
     </div>
     
</div>
<br />
</asp:Content>
