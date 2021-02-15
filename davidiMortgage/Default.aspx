<%@ Page Title="" Language="VB" MasterPageFile="~/davidiMortgage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p>
        Principle Amount:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Principle" runat="server"></asp:TextBox>
       
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Principle" ErrorMessage="*Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        &nbsp;
       
        Annual % Rate:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Pct_Rate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pct_Rate" ErrorMessage="*Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
    <p>
        Loan Terms:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Terms" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Terms" ErrorMessage="*Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Terms" ErrorMessage="*value must be between 12-360" ForeColor="#FF3300" MaximumValue="360" MinimumValue="12" Type="Double"></asp:RangeValidator>
</p>
    <p>
        <asp:Button ID="CalculateButton" runat="server" Height="20px" Text="Calculate" Width="100px" BackColor="#99CCFF" BorderWidth="2px" />  
        &nbsp;  <asp:Button ID="ClearButton" runat="server" BackColor="#CCFF99" BorderColor="Black" BorderWidth="2px" CausesValidation="False" Height="20px" Text="Clear" Width="100px" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Monthly Payment:&nbsp;
        <asp:Label ID="MO_Payment" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Total
        All Payments:&nbsp;
        <asp:Label ID="TOTAL_Payment" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Total Interet Paid:
        <asp:Label ID="TOTAL_Interest" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Monthly Interest:
        <asp:Label ID="MO_INT" runat="server" Text="Label"></asp:Label>
    </p>
<p>
        <asp:ListBox ID="MortSummary" runat="server" Height="207px" Width="319px"></asp:ListBox>
    </p>
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder4">
    Complete the Mortgage Details 
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder5">
    See Results Below
</asp:Content>


