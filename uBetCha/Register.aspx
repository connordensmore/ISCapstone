<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 206px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<table style="width:100%;">
    <tr>
        <td class="auto-style2">User Name:</td>
        <td>
            <asp:TextBox ID="tbusername" runat="server"></asp:TextBox>
            *</td>
    </tr>
    <tr>
        <td class="auto-style2">E-mail:</td>
        <td>
            <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Password:</td>
        <td>
            <asp:TextBox ID="tbpassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Password:</td>
        <td>
            <asp:TextBox ID="tbconfirmpassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btregister" runat="server" Text="Register" />
        </td>
    </tr>
</table>
</asp:Content>

