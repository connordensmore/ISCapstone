Imports System.Data.SqlClient

Partial Class Betting
    Inherits System.Web.UI.Page

    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

    Dim BetChaBucks As Integer
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Bet (BetDate, GameId, BetAmount, BetTeam, UserId) VALUES ('" & lbldate.Text & "', '" & lblgid.Text & "', '" & tbbetamount.Text & "', '" & rbteams.SelectedItem.Text & "', '" & lbluserid.Text & "')"), cn)
        cmd.ExecuteNonQuery()

        cn.Close()

        cn.Open()

        Dim cmd2 As New Data.SqlClient.SqlCommand(("UPDATE Users SET BetChaBucks = BetChaBucks -" & tbbetamount.Text & " WHERE UserId =" & lbluserid.Text & ""), cn)
        cmd2.ExecuteNonQuery()
        cn.Close()

        lblmsg.Text = "Your bet has been placed! $" & tbbetamount.Text & " has been subtracted from your account. Check your account page to see your bets!"

        lblgid.Text = ""
        tbbetamount.Text = ""
        rbteams.Visible = False
        ListBox1.Visible = False
        Button1.Visible = False
        btreview.Visible = False
        rbteams.SelectedIndex = -1

        GridView2.DataBind()
        BetChaBucks = GridView2.Rows(0).Cells(2).Text
        lblbetchabucks.Text = BetChaBucks

    End Sub
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged

        Dim GameDate As String = GridView1.SelectedRow.Cells(2).Text
        Dim VTeam As String = GridView1.SelectedRow.Cells(4).Text
        Dim HTeam As String = GridView1.SelectedRow.Cells(5).Text

        If GameDate < DateTime.Now Then
            lblmsg3.Text = "This game has already passed! You cannot bet on this game!"
            lblmsg3.Focus()

        Else
            lblmsg.Text = ""
            lblmsg2.Text = ""
            lblmsg3.Text = ""

            rbteams.Visible = True
            btreview.Visible = True

            lblgid.Text = GridView1.SelectedRow.Cells(1).Text

            rbteams.Items(0).Text = GridView1.SelectedRow.Cells(4).Text
            rbteams.Items(1).Text = GridView1.SelectedRow.Cells(5).Text

            Button1.Focus()

        End If

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.IsAuthenticated Then
            Dim message As String = "Welcome"

        Else
            Response.Redirect("~/Default.aspx")

        End If

        If (Context.User.Identity.IsAuthenticated) Then

            lblusername.Text = Context.User.Identity.Name

        End If

        lbldate.Text = DateTime.Now.ToString("d")
        lbluserid.Text = GridView2.Rows(0).Cells(0).Text

        btreview.Visible = False
        rbteams.Visible = False

        BetChaBucks = GridView2.Rows(0).Cells(2).Text
        lblbetchabucks.Text = BetChaBucks

    End Sub

    Protected Sub btreview_Click(sender As Object, e As EventArgs) Handles btreview.Click

        lblmsg.Text = ""
        lblmsg2.Text = ""
        ListBox1.Items.Clear()
        lblbetchabucks.Text = GridView2.Rows(0).Cells(2).Text
        rbteams.Visible = True
        btreview.Visible = True

        Dim GameDate As String = GridView1.SelectedRow.Cells(2).Text
        Dim VTeam As String = GridView1.SelectedRow.Cells(4).Text
        Dim HTeam As String = GridView1.SelectedRow.Cells(5).Text

        Dim BetAmount As Integer = Convert.ToInt32(tbbetamount.Text)

        If BetChaBucks < BetAmount Then
            lblmsg2.Text = "You do not have enough money! You currently have: $" + BetChaBucks.ToString + " BetChaBucks!!!"
            ListBox1.Visible = False

        Else

            ListBox1.Visible = True

            ListBox1.Items.Add("Game ID: " + lblgid.Text)
            ListBox1.Items.Add("Date of Game: " + GameDate)
            ListBox1.Items.Add("Visitor Team: " + VTeam)
            ListBox1.Items.Add("Home Team: " + HTeam)
            ListBox1.Items.Add("-------")
            ListBox1.Items.Add("Bet placed on: " + rbteams.SelectedItem.Text)
            ListBox1.Items.Add("Bet Amount: $" + tbbetamount.Text)

            Button1.Visible = True

            Button1.Focus()

        End If

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        lblgid.Text = ""
        tbbetamount.Text = ""
        rbteams.SelectedIndex = -1
        rbteams.Visible = False
        ListBox1.Visible = False
        Button1.Visible = False
        lblmsg.Text = ""
        lblmsg2.Text = ""
        lblmsg3.Text = ""

    End Sub
End Class
