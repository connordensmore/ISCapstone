﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

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
        <p>Users 
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
        <hr />
        <p>Bet Completition: 0 = Not Completed; 1 = Completed</p>
        <p>Bet Team: 1 = Home; 2 = Visitor</p>

        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="517px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1298px">
            <LocalReport ReportPath="AdminPages\BettingReport.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBets" TypeName="DataSetTableAdapters.ReportBetTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_BetId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BetDate" Type="DateTime" />
                <asp:Parameter Name="BetCompletion" Type="Int32" />
                <asp:Parameter Name="GameId" Type="Int32" />
                <asp:Parameter Name="BetAmount" Type="Int32" />
                <asp:Parameter Name="BetTeam" Type="Int32" />
                <asp:Parameter Name="UserId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BetDate" Type="DateTime" />
                <asp:Parameter Name="BetCompletion" Type="Int32" />
                <asp:Parameter Name="GameId" Type="Int32" />
                <asp:Parameter Name="BetAmount" Type="Int32" />
                <asp:Parameter Name="BetTeam" Type="Int32" />
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="Original_BetId" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

    </div>
</asp:Content>

