<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title"><h1>Admin Page</h1></div>
    <br />
    <div class="container">
        <h2 class="textcenter"><asp:Label ID="lblmsg" runat="server"></asp:Label></h2>
        <br />
        <p>Change a user roles or add money to their account!</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="5" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="RoleId" HeaderText="RoleId" SortExpression="RoleId" />
                    <asp:BoundField DataField="BetChaBucks" HeaderText="BetChaBucks" SortExpression="BetChaBucks" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UBetChaDB %>" SelectCommand="SELECT [UserId], [Username], [RoleId], [BetChaBucks] FROM [Users]"></asp:SqlDataSource>
        </p>
        <p>Users: 
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username">
                <asp:ListItem Selected="True">---</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UBetChaDB %>" SelectCommand="SELECT [Username] FROM [Users]"></asp:SqlDataSource> Roles: 
            <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="100px">
                <asp:ListItem Selected="True">---</asp:ListItem>
                <asp:ListItem Value="1">Member</asp:ListItem>
                <asp:ListItem Value="2">Admin</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Change Role" />
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblupdate" runat="server"></asp:Label>
        </p>
        <p>Users:
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Username" DataValueField="Username">
                <asp:ListItem Selected="True">---</asp:ListItem>
            </asp:DropDownList>
&nbsp;Add Money:
            <asp:TextBox ID="tbaddmoney" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btaddmoney" runat="server" Text="Add Money" />
&nbsp;<asp:Label ID="lbladdmoney" runat="server"></asp:Label>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UBetChaDB %>" SelectCommand="SELECT [Username] FROM [Users]"></asp:SqlDataSource>
        </p>
        <hr />
        <p>Completeed Bets:</p>
        <p class="auto-style1">Win Lose Amount: Negative is collection. Postive is payout.</p>

        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="517px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="650px">
            <LocalReport ReportPath="AdminPages\PastBets.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="ReportPastBets" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataReportPastBets" TypeName="DataSetTableAdapters.ReportPastBetsTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_BetId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BetDate" Type="DateTime" />
                <asp:Parameter Name="GameId" Type="Int32" />
                <asp:Parameter Name="BetAmount" Type="Int32" />
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="WinLoseAmount" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BetDate" Type="DateTime" />
                <asp:Parameter Name="GameId" Type="Int32" />
                <asp:Parameter Name="BetAmount" Type="Int32" />
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="WinLoseAmount" Type="Int32" />
                <asp:Parameter Name="Original_BetId" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />

        <p>Upcoming Bets:</p>
        <p></p>

        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="507px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="655px">
            <LocalReport ReportPath="AdminPages\Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="ReportsUpcomingBets" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataReportUpcomingBets" TypeName="DataSetTableAdapters.ReportUpcommingBetsTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_BetId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BetDate" Type="DateTime" />
                <asp:Parameter Name="GameId" Type="Int32" />
                <asp:Parameter Name="BetAmount" Type="Int32" />
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="WinLoseAmount" Type="Int32" />
                <asp:Parameter Name="BetCompletion" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BetDate" Type="DateTime" />
                <asp:Parameter Name="GameId" Type="Int32" />
                <asp:Parameter Name="BetAmount" Type="Int32" />
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="WinLoseAmount" Type="Int32" />
                <asp:Parameter Name="BetCompletion" Type="Int32" />
                <asp:Parameter Name="Original_BetId" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        </div>
    <br />
</asp:Content>

