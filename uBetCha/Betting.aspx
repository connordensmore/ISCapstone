<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Betting.aspx.vb" Inherits="Betting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="teamname" DataValueField="teamname">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataTeamName" TypeName="DataSetTableAdapters.TeamsTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="teamname" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GameId" DataSourceID="ObjectDataSource2" Width="822px">
            <Columns>
                <asp:BoundField DataField="GameId" HeaderText="GameId" ReadOnly="True" SortExpression="GameId" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor" SortExpression="Visitor" />
                <asp:BoundField DataField="Home" HeaderText="Home" SortExpression="Home" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataShowGames" TypeName="DataSetTableAdapters.GamesTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_GameId" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="teamname" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="StartTime" Type="String" />
                <asp:Parameter Name="Visitor" Type="String" />
                <asp:Parameter Name="Home" Type="String" />
                <asp:Parameter Name="Original_GameId" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <hr />
        <h1 class="textcenter">
            <br />
            Place Your Bets!</h1>
        <p class="textleft">
            Game ID
            <asp:TextBox ID="tbgameid" runat="server"></asp:TextBox>
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

