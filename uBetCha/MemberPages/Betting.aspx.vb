Imports System.Data.SqlClient

Partial Class Betting
    Inherits System.Web.UI.Page

    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Bet (BetDate, GameId, BetAmount, BetTeam, UserId) VALUES ('" & lbldate.Text & "', '" & lblgid.Text & "', '" & tbbetamount.Text & "', '" & rbteams.SelectedItem.Text & "', '" & lbluserid.Text & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        lblmsg.Text = "Your bet has been placed! Check your account page to see your bets!"

        lblgid.Text = ""
        tbbetamount.Text = ""
        rbteams.SelectedIndex = -1
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged

        lblgid.Text = GridView1.SelectedRow.Cells(1).Text

        rbteams.Items(0).Text = GridView1.SelectedRow.Cells(4).Text
        rbteams.Items(1).Text = GridView1.SelectedRow.Cells(5).Text



        Button1.Focus()

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.IsAuthenticated Then
            Dim message As String = "Welcome"

        Else
            Response.Redirect("~/Default.aspx")

        End If

        If (Context.User.Identity.IsAuthenticated) Then

            lblusername.Text = Context.User.Identity.Name


            'Dim myname As String = lblusername.Text

            'Dim str As String = "Select * from Users WHERE Username = 'Context.User.Identity.Name'"
            'Dim cmd As New Data.SqlClient.SqlCommand(str, cn)
            'cmd.Connection = cn
            'cn.Open()
            'Dim dr As Data.SqlClient.SqlDataReader = cmd.ExecuteReader()

            'While (dr.Read())
            'lbluserid.Text = dr("UserId").ToString()
            'End While
            'dr.Close()
            'cn.Close()

        End If

        lbldate.Text = DateTime.Now.ToString("d")

        lbluserid.Text = GridView2.Rows(0).Cells(0).Text

        'rbteams.Items(0).Text = "Visitor Team"
        'rbteams.Items(1).Text = "Home Team"

    End Sub

    Protected Sub btreview_Click(sender As Object, e As EventArgs) Handles btreview.Click

        ListBox1.Visible = True

        ListBox1.Items.Add("Game ID: " + lblgid.Text)
        ListBox1.Items.Add("Bet placed on: " + rbteams.SelectedItem.Text)
        ListBox1.Items.Add("Bet Amount: $" + tbbetamount.Text)

        Button1.Visible = True

    End Sub
End Class
