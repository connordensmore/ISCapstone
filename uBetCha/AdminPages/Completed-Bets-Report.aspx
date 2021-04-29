<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Completed-Bets-Report.aspx.vb" Inherits="AdminPages_Completed_Bets_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="title"><h1>Completed Bets Report</h1></div>
    <br />
            <p class="textcenter"><a href="Admin.aspx">Admin Page</a>| <a href="Completed-Bets-Report.aspx"> Completed Bets Report</a> | <a href="Upcoming-Bets-Report.aspx"> Upcoming Bets Report</a> | <a href="Upcoming-Games-Report.aspx">Upcoming Games Report</a></p>
    <div class="container">
        <p>
        Completed Bets:</p>
    <p class="auto-style1">
        Win Lose Amount: Negative is collection. Postive is payout.</p>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="751px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="717px">
        <LocalReport ReportPath="AdminPages\PastBets.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="ReportPastBets" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
        <br />
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
        </div>
</asp:Content>

