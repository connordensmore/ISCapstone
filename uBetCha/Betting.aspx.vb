
Partial Class Betting
    Inherits System.Web.UI.Page

    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        lbldate.Text = DateTime.Now.ToString("d")

        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Bet (BetDate, GameId, BetAmount, BetTeam) VALUES ('" & lbldate.Text & "', '" & tbgameid.Text & "', '" & tbbetamount.Text & "', '" & rbteams.SelectedValue & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        lblmsg.Text = "Your bet has been placed! Check your account page to see your bets!"

        tbgameid.Text = ""
        tbbetamount.Text = ""
        rbteams.SelectedIndex = 0
    End Sub
End Class
