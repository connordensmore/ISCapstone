<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="banner">
		<div class="container" id="main">
			<div class="major">
				<h2>uBetCha | Practice Your Bets</br>
				Rated #1 Practice Betting Site</h2>
				<p class="subtitle">Register Your Account Today!</br>
				<a href="Register.aspx">Register</a></br></br>
                <asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label>&nbsp;</p>
			</div>
		</div>
	</div>
</asp:Content>