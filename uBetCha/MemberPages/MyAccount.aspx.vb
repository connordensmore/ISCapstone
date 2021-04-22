Imports System.Data.SqlClient
Partial Class MyAccount
    Inherits System.Web.UI.Page

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
        lblbetchabucks.Text = GridView1.Rows(0).Cells(2).Text

        lblmsg2.Text = " Your current BetChaBucks balance is: $" + lblbetchabucks.Text

    End Sub
End Class
