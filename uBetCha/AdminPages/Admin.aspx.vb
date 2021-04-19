
Partial Class Admin
    Inherits System.Web.UI.Page

    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.IsAuthenticated Then
            Dim message As String = "Welcome"

        Else
            Response.Redirect("~/Default.aspx")

        End If

        If (Context.User.Identity.IsAuthenticated) Then
            lblmsg.Text = "Hello" + Context.User.Identity.Name = " Welcome to the admin page of the website."

        Else
            Response.Redirect("~/Default.aspx")

        End If

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("UPDATE Users SET Roleid = '" & DropDownList2.SelectedIndex & "' WHERE Username = '" & DropDownList2.SelectedValue & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        lblupdate.Text = "User Updated"

    End Sub
End Class
