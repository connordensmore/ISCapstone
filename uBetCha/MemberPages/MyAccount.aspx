<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MyAccount.aspx.vb" Inherits="MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br />



        <asp:Label ID="lblmsg" runat="server"></asp:Label>

        <asp:Label ID="lblmsg2" runat="server"></asp:Label>
        <br />

        &nbsp;<p>View Past Bets</p>
            <p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" Width="1440px" CellPadding="5" CssClass="textcenter" Align="center" DataSourceID="ObjectDataSource2" DataKeyNames="BetId">
            <Columns>
                <asp:BoundField DataField="BetId" HeaderText="BetId" InsertVisible="False" ReadOnly="True" SortExpression="BetId" />
                <asp:BoundField DataField="UserId" SortExpression="UserId" >
                <ItemStyle Font-Size="XX-Small" ForeColor="White" Width="0px" />
                </asp:BoundField>
                <asp:BoundField DataField="BetDate" HeaderText="BetDate" SortExpression="BetDate" DataFormatString="{0:d}" />
                <asp:BoundField DataField="GameId" HeaderText="GameId" SortExpression="GameId" />
                <asp:BoundField DataField="BetAmount" HeaderText="BetAmount" SortExpression="BetAmount" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor" SortExpression="Visitor" />
                <asp:BoundField DataField="Home" HeaderText="Home" SortExpression="Home" />
                <asp:BoundField DataField="VPTS" HeaderText="VPTS" SortExpression="VPTS" />
                <asp:BoundField DataField="HPTS" HeaderText="HPTS" SortExpression="HPTS" />
                <asp:BoundField DataField="Date" HeaderText="Date of Game" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="BetTeam" HeaderText="Bet Team" SortExpression="BetTeam" />
            </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataPastBets" TypeName="DataSetTableAdapters.Past_BetsTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbluserid" Name="UserId" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </p>


        <p>View Upcoming Bets</p>
        



        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" Width="1440px" CellPadding="5" CssClass="textcenter" Align="center" DataKeyNames="BetId" DataSourceID="ObjectDataSource3">
            <Columns>
                <asp:BoundField DataField="BetId" HeaderText="BetId" InsertVisible="False" ReadOnly="True" SortExpression="BetId" />
                <asp:BoundField DataField="UserId" SortExpression="UserId" >
                <ItemStyle Font-Size="XX-Small" ForeColor="White" Width="1px" />
                </asp:BoundField>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
                <asp:BoundField DataField="Visitor" HeaderText="Visitor" SortExpression="Visitor" />
                <asp:BoundField DataField="Home" HeaderText="Home" SortExpression="Home" />
                <asp:BoundField DataField="BetAmount" HeaderText="BetAmount" SortExpression="BetAmount" />
                <asp:BoundField DataField="BetDate" HeaderText="BetDate" SortExpression="BetDate" DataFormatString="{0:d}" />
                <asp:BoundField DataField="BetTeam" HeaderText="BetTeam" SortExpression="BetTeam" />
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

