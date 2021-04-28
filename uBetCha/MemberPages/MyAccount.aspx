<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MyAccount.aspx.vb" Inherits="MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br />



        <h2 class="textcenter">



        <asp:Label ID="lblmsg" runat="server"></asp:Label>

        <asp:Label ID="lblmsg2" runat="server"></asp:Label>
        <asp:Label ID="lblbetamount" runat="server"></asp:Label>
        </h2>
        <p class="textcenter">
            Below you can review all your past, present and future bets you have made! Your winnings and losses can be seen in the table of &quot;Past Bets&quot;</p>
        <br />

        <p>
            <asp:Label ID="lblwinlose" runat="server"></asp:Label>
        </p>

        <p>View Past Bets</p>
            <p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" Width="1440px" CellPadding="5" CssClass="textcenter" Align="center" DataSourceID="ObjectDataSource2" DataKeyNames="BetId">
            <Columns>
                <asp:BoundField DataField="BetId" HeaderText="Bet ID" InsertVisible="False" ReadOnly="True" SortExpression="BetId" />
                <asp:BoundField DataField="BetDate" HeaderText="Date of Bet" SortExpression="BetDate" DataFormatString="{0:d}" />
                <asp:BoundField DataField="BetAmount" HeaderText="Ammount Bet" SortExpression="BetAmount" />
                <asp:BoundField DataField="BetTeam" HeaderText="Team Bet On" SortExpression="BetTeam" />
                <asp:BoundField DataField="GameId" HeaderText="Game ID" SortExpression="GameId" />
                <asp:BoundField DataField="Date" HeaderText="Date of Game" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor Team" SortExpression="Visitor" />
                <asp:BoundField DataField="VPTS" HeaderText="Visitor Points" SortExpression="VPTS" />
                <asp:BoundField DataField="Home" HeaderText="Home Team" SortExpression="Home" />
                <asp:BoundField DataField="HPTS" HeaderText="Home Points" SortExpression="HPTS" />
                <asp:BoundField DataField="WinLoseAmount" HeaderText="Win / Loss Amount" SortExpression="WinLoseAmount" />
            </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataPastBets" TypeName="DataSetTableAdapters.Past_BetsTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbluserid" Name="UserId" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </p>
        <p>
            Pending Bet Claims</p>
        <p>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" Width="1440px" CellPadding="5" CssClass="textcenter" Align="center" DataKeyNames="BetId" DataSourceID="ObjectDataSource4">
                <Columns>
                    <asp:CommandField ButtonType="Button" SelectText="Claim Bet" ShowSelectButton="True" />
                    <asp:BoundField DataField="BetId" HeaderText="Bet ID" InsertVisible="False" ReadOnly="True" SortExpression="BetId" />
                    <asp:BoundField DataField="BetDate" HeaderText="Date of Bet" SortExpression="BetDate" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="BetAmount" HeaderText="Ammount Bet" SortExpression="BetAmount" />
                    <asp:BoundField DataField="BetTeam" HeaderText="Team Bet On" SortExpression="BetTeam" />
                    <asp:BoundField DataField="GameId" HeaderText="Game ID" SortExpression="GameId" />
                    <asp:BoundField DataField="Date" HeaderText="Date of Game" SortExpression="Date" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Visitor" HeaderText="Visitor Team" SortExpression="Visitor" />
                    <asp:BoundField DataField="VPTS" HeaderText="Visitor Points" SortExpression="VPTS" />
                    <asp:BoundField DataField="Home" HeaderText="Home Team" SortExpression="Home" />
                    <asp:BoundField DataField="HPTS" HeaderText="Home Points" SortExpression="HPTS" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.PendingBetsTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbluserid" Name="UserId" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            </p>


        <p>View Upcoming Bets</p>
        



        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" Width="1440px" CellPadding="5" CssClass="textcenter" Align="center" DataKeyNames="BetId" DataSourceID="ObjectDataSource3">
            <Columns>
                <asp:BoundField DataField="BetId" HeaderText="Bet Id" InsertVisible="False" ReadOnly="True" SortExpression="BetId" />
                <asp:BoundField DataField="BetDate" HeaderText="Date of Bet" SortExpression="BetDate" DataFormatString="{0:d}" />
                <asp:BoundField DataField="BetAmount" HeaderText="Ammount Bet" SortExpression="BetAmount" />
                <asp:BoundField DataField="BetTeam" HeaderText="Team Bet On" SortExpression="BetTeam" />
                <asp:BoundField DataField="Date" HeaderText="Date of Game" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor Team" SortExpression="Visitor" />
                <asp:BoundField DataField="Home" HeaderText="Home Team" SortExpression="Home" />
            </Columns>
        </asp:GridView>
        



        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataUpcomingBets" TypeName="DataSetTableAdapters.Upcoming_BetsTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="lbluserid" Name="UserId" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        



        <br />
        <br />
        <asp:Label ID="lblusername" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblbetchabucks" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lbluserid" runat="server" Visible="False"></asp:Label>



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="ObjectDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="BetChaBucks" HeaderText="BetChaBucks" SortExpression="BetChaBucks" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataGetUserId" TypeName="DataSetTableAdapters.GetUserIdTableAdapter">
            <DeleteParameters>
                <asp:Parameter Name="Original_UserId" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lblusername" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>



    </div>
</asp:Content>

