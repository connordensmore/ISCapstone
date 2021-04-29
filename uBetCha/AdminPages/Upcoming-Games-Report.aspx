<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Upcoming-Games-Report.aspx.vb" Inherits="AdminPages_Upcoming_Games_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title"><h1>Upcoming Games Report</h1></div>
    <br />
            <p class="textcenter"><a href="Admin.aspx">Admin Page</a>| <a href="Completed-Bets-Report.aspx"> Completed Bets Report</a> | <a href="Upcoming-Bets-Report.aspx"> Upcoming Bets Report</a> | <a href="Upcoming-Games-Report.aspx">Upcoming Games Report</a></p>
    <div class="container">
        <p>
            Upcoming Bets:</p>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="575px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="634px">
            <localreport reportpath="AdminPages\Report2.rdlc">
                <datasources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="UpcomgGames" />
                </datasources>
            </localreport>
        </rsweb:ReportViewer>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataUpcomingGames" TypeName="DataSetTableAdapters.UpcomingGamesTableAdapter"></asp:ObjectDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        </div>
</asp:Content>

