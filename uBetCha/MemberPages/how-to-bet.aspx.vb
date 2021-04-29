
Partial Class MemberPages_how_to_bet
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.IsAuthenticated Then
            Dim message As String = "Welcome"

        Else
            Response.Redirect("~/Default.aspx")

        End If

        If (Context.User.Identity.IsAuthenticated) Then
            lblmsg.Text = "Hello " + Context.User.Identity.Name + ". Below you can find detailed info on how to place bets!"
        Else
            lblmsg.Text = "Hello Guest"

        End If
    End Sub
End Class
