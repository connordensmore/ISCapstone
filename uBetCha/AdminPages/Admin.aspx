<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title"><h1>Admin Page</h1></div>
    <br />
    <div class="container">
        <h2 class="textcenter"><asp:Label ID="lblmsg" runat="server"></asp:Label></h2>
        <br />
        <p>Change a user roles!</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="5" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="RoleId" HeaderText="Role ID" SortExpression="RoleId" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UBetChaDB %>" SelectCommand="SELECT [UserId], [Username], [RoleId] FROM [Users]"></asp:SqlDataSource>
        </p>
        <p>Users <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username" Height="30px" Width="100px"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UBetChaDB %>" SelectCommand="SELECT [Username] FROM [Users]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp; Roles 
            <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="100px">
                <asp:ListItem Value="1">Member</asp:ListItem>
                <asp:ListItem Value="2">Admin</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Change Role" />
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblupdate" runat="server"></asp:Label>
        </p>

    </div>
</asp:Content>

