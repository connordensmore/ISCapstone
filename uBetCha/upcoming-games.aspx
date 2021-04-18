<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="upcoming-games.aspx.vb" Inherits="upcoming_games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">

        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="teamname" DataValueField="teamname">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UBetChaDB %>" SelectCommand="SELECT [teamname] FROM [Teams]"></asp:SqlDataSource>
        <br />

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="GameId" Width="1040px" Align="center" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:CommandField SelectText="Place Bet" ShowSelectButton="True" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="StartTime" HeaderText="Start Time" SortExpression="StartTime" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor Team" SortExpression="Visitor" />
                <asp:BoundField DataField="Home" HeaderText="Home Team" SortExpression="Home" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataShowGames" TypeName="DataSetTableAdapters.GamesTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" ConvertEmptyStringToNull="False" Name="teamname" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>

    </div>
</asp:Content>

