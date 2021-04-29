<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Teams.aspx.vb" Inherits="Teams" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="title"><h1>Teams</h1></div>

    <div class="container">

        <br />

        <p class="textcenter">The NBA began life as the Basketball Association of America in 1946 and played under that monkier for 3 years before, in 1949, merging with the National Basketball League and changing names to the NBA. The BAA started out with 11 teams in 1946 but lost four of them before the start of the next season. Now the NBA currently consist of 30 teams spanning all across North America. Below You can find a list of all 30 current teams and their previous two season records.</p>
        <div class="center">

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1040px" CellPadding="10" CssClass="textcenter" Align="center" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="teamname" HeaderText="Team Name" SortExpression="teamname" />
                    <asp:BoundField DataField="teamlocation" HeaderText="Team Location" SortExpression="teamlocation" />
                    <asp:BoundField DataField="teamarena" HeaderText="Team Arena" SortExpression="teamarena" />
                    <asp:BoundField DataField="tnrecord" HeaderText="2019 Record" SortExpression="tnrecord" />
                    <asp:BoundField DataField="ttrecord" HeaderText="2020 Record" SortExpression="ttrecord" />
                </Columns>
            </asp:GridView>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UBetChaDB %>" SelectCommand="SELECT [teamname], [teamlocation], [teamarena], [tnrecord], [ttrecord] FROM [Teams]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>


