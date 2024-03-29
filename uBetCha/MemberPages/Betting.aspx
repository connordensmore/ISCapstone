﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Betting.aspx.vb" Inherits="Betting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            background-color: #46CDCF;
            border-radius: 30px;
            color: #ffffff;
            cursor: pointer;
            display: inline-block;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            font-size: 1.3em;
            margin-top: 10px;
            vertical-align: middle;
        }
    </style>
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
            <asp:Label ID="lblgid" runat="server" Visible="False"></asp:Label>
        &nbsp;<asp:Label ID="lblusername" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lbluserid" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lbldate" runat="server" Visible="False"></asp:Label>
        &nbsp;</p>
        <p class="textleft">
            Bet Amount
            <asp:TextBox ID="tbbetamount" runat="server"></asp:TextBox>
            &nbsp;Your current balance: $<asp:Label ID="lblbetchabucks" runat="server"></asp:Label>
        &nbsp;BetChaBucks.</p>
            <p>Who will win the game?</p>
            <asp:RadioButtonList ID="rbteams" runat="server" Font-Bold="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbteams" ErrorMessage="You must select a team to bet on first!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <p class="textleft">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Lime"></asp:Label>
            <asp:Label ID="lblmsg2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblmsg3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </p>
        <p class="textleft">
&nbsp;<asp:Button ID="btreview" runat="server" CssClass="auto-style1" Text="Review Bet" Width="192px" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear Bet" CssClass="auto-style1" Width="183px" CausesValidation="False" />
        </p>
        <p class="textleft">
            <asp:ListBox ID="ListBox1" runat="server" Height="113px" Visible="False" Width="315px"></asp:ListBox>
        </p>
        <p class="textleft">
            <asp:Button ID="Button1" runat="server" Text="Place Bet!" CssClass="button" Visible="False" />
        </p>
        <p class="textleft">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="ObjectDataSource3" SelectedIndex="1" Visible="False" ShowHeaderWhenEmpty="True">
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="BetChaBucks" HeaderText="BetChaBucks" SortExpression="BetChaBucks" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataGetUserId" TypeName="DataSetTableAdapters.GetUserIdTableAdapter">
                <DeleteParameters>
                    <asp:Parameter Name="Original_UserId" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblusername" Name="Username" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </p>
        <p class="textleft">
            &nbsp;</p>
        
    </div>
</asp:Content>

