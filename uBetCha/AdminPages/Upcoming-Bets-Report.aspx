<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Upcoming-Bets-Report.aspx.vb" Inherits="AdminPages_Upcoming_Bets_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="title"><h1>Upcoming Bets Report</h1></div>
    <br />
            <p class="textcenter"><a href="Admin.aspx">Admin Page</a>| <a href="Completed-Bets-Report.aspx"> Completed Bets Report</a> | <a href="Upcoming-Bets-Report.aspx"> Upcoming Bets Report</a> | <a href="Upcoming-Games-Report.aspx">Upcoming Games Report</a></p>
    <div class="container">
        <p>
            Upcoming Bets:</p>
    <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="693px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="693px">
        <LocalReport ReportPath="AdminPages\Report1.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="ReportsUpcomingBets" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
        <br />
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        </div>
</asp:Content>

