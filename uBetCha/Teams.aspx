<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Teams.aspx.vb" Inherits="Teams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="title"><h1>Teams</h1></div>

    <div class="container">
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


