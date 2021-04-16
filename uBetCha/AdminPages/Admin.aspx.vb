
Partial Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.IsAuthenticated Then
            Dim message As String = "Welcome"

        Else
            Response.Redirect("~/Default.aspx")

        End If

        If (Context.User.Identity.IsAuthenticated) Then
            lblmsg.Text = "Hello" + Context.User.Identity.Name

        Else
            lblmsg.Text = "Hello Guest"

        End If
    End Sub
End Class
