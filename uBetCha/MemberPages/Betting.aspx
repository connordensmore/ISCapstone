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
        <asp:GridView ID="GridView1" runat="server" Width="1040px" CellPadding="10" BorderStyle="None" BorderColor="white" CssClass="textcenter" Align="center" AutoGenerateColumns="False" DataKeyNames="GameId" DataSourceID="ObjectDataSource2">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Place Bet" ShowSelectButton="True" />
                <asp:BoundField DataField="GameId" SortExpression="GameId" ReadOnly="True" ShowHeader="False" >
                <ItemStyle Font-Size="XX-Small" Font-Underline="False" ForeColor="White" Height="0px" Width="0px" />
                </asp:BoundField>
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
        &nbsp;<asp:Label ID="lblusername" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lbluserid" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lbldate" runat="server"></asp:Label>
        &nbsp;</p>
        <p class="textleft">
            Bet Amount
            <asp:TextBox ID="tbbetamount" runat="server"></asp:TextBox>
        </p>
            <p>Who will win the game?</p>
            <asp:RadioButtonList ID="rbteams" runat="server">
                <asp:ListItem id="option1" Value="0"></asp:ListItem>
                <asp:ListItem id="option2" Value="1"></asp:ListItem>
            </asp:RadioButtonList>
        <p class="textleft">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Lime"></asp:Label>
        </p>
        <p class="textleft">
            <asp:Button ID="Button1" runat="server" Text="Place Bet!" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear Bet" />
        </p>
        <p class="textleft">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="ObjectDataSource3" SelectedIndex="1">
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataGetUserId" TypeName="DataSetTableAdapters.GetUserIdTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_UserId" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblusername" Name="Username" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Original_UserId" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </p>
        <p class="textleft">
            &nbsp;</p>
        
    </div>
</asp:Content>

