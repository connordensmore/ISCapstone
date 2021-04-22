<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="upcoming-games.aspx.vb" Inherits="upcoming_games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title"><h1>Upcoming Games</h1></div>

    <div class="container">
        <br />
        <p class="textcenter">Below you can find a list of all the currently schedule upcoming games that you will be able to place bets on (Upon registering your very own account and logging in).</p>

        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1040px" CellPadding="10" CssClass="textcenter" Align="center" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date of Game" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="StartTime" HeaderText="Start Time" SortExpression="StartTime" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor Team" SortExpression="Visitor" />
                <asp:BoundField DataField="Home" HeaderText="Home Team" SortExpression="Home" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataUpcomingGames" TypeName="DataSetTableAdapters.UpcomingGamesTableAdapter"></asp:ObjectDataSource>
        <br />
        <br />

    </div>
</asp:Content>

