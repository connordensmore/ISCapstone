<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 206px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <br />
<table class="registertable" align="center">
    <tr>
        <td colspan="2">
            <br />
            <h2>Register</h2>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">User Name:</td>
        <td>
            <asp:TextBox ID="tbusername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ForeColor="Red" ErrorMessage="Username is required" ControlToValidate="tbusername" Display="Dynamic" Text="*" ValidationGroup="Registration"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">E-mail:</td>
        <td>
            <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ForeColor="Red" ErrorMessage="Email is required" ControlToValidate="tbemail" Display="Dynamic" Text="*" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid Email Format" ControlToValidate="tbemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*" ValidationGroup="Registration"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Password:</td>
        <td>
            <asp:TextBox ID="tbpassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password is required" ControlToValidate="tbpassword" Display="Dynamic" Text="*" ValidationGroup="Registration"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Password:</td>
        <td>
            <asp:TextBox ID="tbconfirmpassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Password and Confirm Password must match" ControlToValidate="tbconfirmpassword" ControlToCompare="tbpassword" Operator="Equal" Type="String" ForeColor="Red" Text="*" ValidationGroup="Registration"></asp:CompareValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btregister" runat="server" Text="Register" CssClass="button" ValidationGroup="Registration"/>
        </td>
    </tr>
    <tr>
        <td colspan="2">
           <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True" ShowSummary="true" DisplayMode="List" ValidationGroup="Registration"/>
        </td>
    </tr>
</table>
</div>
</asp:Content>

