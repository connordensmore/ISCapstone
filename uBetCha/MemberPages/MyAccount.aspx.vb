Imports System.Data.SqlClient


Partial Class MyAccount
    Inherits System.Web.UI.Page

    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

    Dim BetChaBucks As String


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.IsAuthenticated Then
            Dim message As String = "Welcome"

        Else
            Response.Redirect("~/Default.aspx")

        End If

        If (Context.User.Identity.IsAuthenticated) Then
            lblmsg.Text = "Hello " + Context.User.Identity.Name + "."
        Else
            lblmsg.Text = "Hello Guest"

        End If

        lblusername.Text = Context.User.Identity.Name

        lbluserid.Text = GridView1.Rows(0).Cells(0).Text

        BetChaBucks = GridView1.Rows(0).Cells(2).Text
        lblmsg2.Text = " Your current BetChaBucks balance is: $" + BetChaBucks

    End Sub
    Protected Sub GridView5_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView5.SelectedIndexChanged

        Dim VPTS As Integer = GridView5.SelectedRow.Cells(8).Text
        Dim HPTS As Integer = GridView5.SelectedRow.Cells(10).Text

        Dim Visitor As String = GridView5.SelectedRow.Cells(7).Text
        Dim Home As String = GridView5.SelectedRow.Cells(9).Text

        Dim BetTeam As String = GridView5.SelectedRow.Cells(4).Text

        Dim BetAmount As Integer = GridView5.SelectedRow.Cells(3).Text

        Dim Winner As String

        Dim BetId As Integer = GridView5.SelectedRow.Cells(1).Text

        If VPTS > HPTS Then
            Winner = Visitor
        Else
            Winner = Home
        End If

        If Winner = BetTeam Then

            cn.Open()

            Dim cmd2 As New Data.SqlClient.SqlCommand(("UPDATE Users SET BetChaBucks = BetChaBucks +" & (BetAmount * 2) & " WHERE UserId =" & lbluserid.Text & ""), cn)
            cmd2.ExecuteNonQuery()
            cn.Close()

            cn.Open()

            Dim cmd3 As New Data.SqlClient.SqlCommand(("UPDATE Bet SET WinLoseAmount = " & (BetAmount * 2) & " WHERE BetId =" & BetId & ""), cn)
            cmd3.ExecuteNonQuery()
            cn.Close()

            lblwinlose.ForeColor = Drawing.Color.LimeGreen
            lblwinlose.Text = "Congratulations! Your bet was right. Youve doubled your money! $" + (BetAmount * 2).ToString + " has been added to your account!"

        Else

            cn.Open()

            Dim cmd4 As New Data.SqlClient.SqlCommand(("UPDATE Bet SET WinLoseAmount = - " & BetAmount & " WHERE BetId =" & BetId & ""), cn)
            cmd4.ExecuteNonQuery()
            cn.Close()

            lblwinlose.ForeColor = Drawing.Color.Red
            lblwinlose.Text = "Sorry! Your bet was not correct! Better luck next time.  Amount lost: $" + BetAmount.ToString

        End If

        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("UPDATE Bet SET BetCompletion = 1 WHERE BetId =" & BetId & ""), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        GridView1.DataBind()
        GridView3.DataBind()
        GridView4.DataBind()
        GridView5.DataBind()

        BetChaBucks = GridView1.Rows(0).Cells(2).Text
        lblmsg2.Text = " Your current BetChaBucks balance is: $" + BetChaBucks

    End Sub
End Class
