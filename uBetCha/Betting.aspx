<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Betting.aspx.vb" Inherits="Betting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title"><h1>Betting</h1></div>

    <div class="container">
        <br />
        <div class="textcenter">
            <p>Filter by the team you want to bet on. Then find your game and press place bet!
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="teamname" DataValueField="teamname" Font-Bold="True" Height="33px" Width="204px" ForeColor="#46CDCF">
        </asp:DropDownList>
            </p>
            <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataTeamName" TypeName="DataSetTableAdapters.TeamsTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="teamname" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" Width="1040px" CellPadding="10" CssClass="textcenter" Align="center" AutoGenerateColumns="False" DataKeyNames="GameId" DataSourceID="ObjectDataSource2">
            <Columns>
                <asp:CommandField SelectText="Place Bet" ShowSelectButton="True" />
                <asp:BoundField DataField="GameId" HeaderText="GameId" SortExpression="GameId" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="Date" HeaderText="Date of Game" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="StartTime" HeaderText="Start Time" SortExpression="StartTime" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor Team" SortExpression="Visitor" />
                <asp:BoundField DataField="Home" HeaderText="Home Team" SortExpression="Home" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataShowGames" TypeName="DataSetTableAdapters.GamesTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="teamname" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
        <br />
        <hr />
        <h1 class="textcenter">
            <br />
            Place Your Bets!</h1>
        <p class="textleft">
            <asp:Label ID="lblgid" runat="server"></asp:Label>
        </p>
        <p class="textleft">
            Bet Amount
            <asp:TextBox ID="tbbetamount" runat="server"></asp:TextBox>
        </p>
            <p>Who will win the game?</p>
            <asp:RadioButtonList ID="rbteams" runat="server">
                <asp:ListItem Value="1">Home Team</asp:ListItem>
                <asp:ListItem Value="2">Visitor Team</asp:ListItem>
            </asp:RadioButtonList>
        <p class="textleft">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Lime"></asp:Label>
            <asp:Label ID="lbldate" runat="server" Visible="False"></asp:Label>
        </p>
        <p class="textleft">
            <asp:Button ID="Button1" runat="server" Text="Place Bet!" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear Bet" />
        </p>
        
    </div>
</asp:Content>

