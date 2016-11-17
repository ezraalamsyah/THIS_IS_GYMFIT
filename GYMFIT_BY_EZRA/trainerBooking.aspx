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
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            </div>
            
            </div>
        <div style="float:right; width:49%;">
            Budget:
            <div align ="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            </div>
        <div>

        </div>
        <div>
            Results:
            <div>
                <asp:ListBox ID="ListBox1" runat="server" Width="457px"></asp:ListBox>
            </div>

            <div>
    
     </div>

            <div align ="center">
                <asp:Button ID="Button1" runat="server" Text="Button" />
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

</asp:Content>
