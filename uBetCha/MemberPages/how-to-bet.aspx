<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="how-to-bet.aspx.vb" Inherits="MemberPages_how_to_bet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="title"><h1>How To Bet</h1></div>

    <div class="container">
        <br />

        <h2 class="textcenter">
        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </h2>

        <div class="container">
            <h2>Understanding the NBA</h2>
            <p>In the NBA there are 30 teams that compete in 82 regular season games through multiple months. After the regular season ends the NBA playoffs begin starting late March and early April. They play in tournament will involve 4 teams from each conference that are seeded from 7 to 10 in the standings. The 7 and 8 seed will play one game and the winner will secure the 7th spot in the standings. The loser of the 7th and 8th seed plays the winner of the 9th and 10th seed, the winner of this game will be the number 8th seed. The 9 and 10th seed will have to win two games in order to advance and secure the 8th seed in the conference standings.</p>
            <p>By navigating to the <a href="/upcoming-games.aspx">"Upcoming Games"</a> page you can see all the upcoming games from the date forward. These are all the eligible games that can be bet on as of that day. As we move into the playoffs there will be less teams competing and therefore less games per day.</p>
            <h2>How to Place a Bet</h2>
            <p>Once you have acquainted yourself with the teams and the upcoming games you can head over to the <a href ="Betting.aspx"> “Betting”</a> page to find your games you want to bet on and then make your bets! Once on the betting page you can filter the games by team via the dropdown menu above the list of games. Select the team you want to bet on and then find the specific game that you want to be on. Once you have found the game you can click the corresponding “Place Bet” button. Once you have selected the game scroll down to the bottom and here you can type in an amount you wish to bet on the game. Remember not to bet more than you currently have in your account! Once you have an amount set pick the team you wish to win. Once you have done those two things press “Review Bet”. Then review your bet in the displayed field checking for the correct amount, team, and game. Once you have verified it is the correct game you can submit your bet! Once you submit your bet it will automatically subtract the amount from your account balance and then you can see your bet on your <a href="MyAccount.aspx"> “My Account”</a> page in “Upcoming Bets”.</p>
            <h2>How to Claim a Bet</h2>
            <p>On your <a href="MyAccount.aspx"> “My Account”</a> page you can see three separate tables that display your past bets, your pending bets, and your future bets. The past bets display the bets you have previously made and have already claimed. Here you can review the bet you made and see if you won or lost money on a specific bet. Next, is the “Pending Bets’ which is where you will see games that have now passed the present date and the scores have been reported and can now be claimed for your account. You simply just must press the “Claim Bet” button and if your bet was correct, you will receive double the amount your bet and have it automatically added to your balance. If you lost, we keep your placed bet! The bet will then automatically move to your past bets for your personal records. finally, you can see your future bets. This is self-explanatory as you can see the date of the game and the teams playing and the team you bet on to win!</p>
            <h3 class="textcenter">Good Luck in Your Bets! Thank You for Using uBetCha!</h3>
        </div>
    </div>
</asp:Content>

