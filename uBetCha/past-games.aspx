<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="past-games.aspx.vb" Inherits="past_games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="title"><h1>Past Games</h1></div>

    <div class="container">
        <br />

        <p class="textcenter">Follow along for the season with updated scores for all 30 NBA teams. After each game it will be added along with the scores indicating the winner!</p>

        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1040px" CellPadding="10" CssClass="textcenter" Align="center" DataSourceID="ObjectDataSource1" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="StartTime" HeaderText="Start Time" SortExpression="StartTime" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor Team" SortExpression="Visitor" />
                <asp:BoundField DataField="VPTS" HeaderText="Visitor Points" SortExpression="VPTS" />
                <asp:BoundField DataField="Home" HeaderText="Home Team" SortExpression="Home" />
                <asp:BoundField DataField="HPTS" HeaderText="Home Points" SortExpression="HPTS" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataPastGames" TypeName="DataSetTableAdapters.Past_GamesTableAdapter"></asp:ObjectDataSource>
        <br />
        <br />

    </div>
</asp:Content>

