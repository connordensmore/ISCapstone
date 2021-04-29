
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
            lblmsg.Text = "Hello " + Context.User.Identity.Name + ". Welcome to the admin page of the website."

        Else
            Response.Redirect("~/Default.aspx")

        End If


    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim User As String = DropDownList3.SelectedItem.Text
        Dim Roles As Integer = DropDownList2.SelectedValue

        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("UPDATE Users SET RoleId = " & Roles & " WHERE Username ='" & User & "'"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        lblupdate.Text = "User's role has been updated!"

        GridView1.DataBind()

    End Sub
    Protected Sub btaddmoney_Click(sender As Object, e As EventArgs) Handles btaddmoney.Click
        Dim User As String = DropDownList4.SelectedItem.Text
        Dim Amount As Integer = tbaddmoney.Text

        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("UPDATE Users SET BetChaBucks = BetChaBucks +" & Amount & " WHERE Username ='" & User & "'"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        lbladdmoney.Text = "User " + User + " has recived $" + Amount.ToString

        tbaddmoney.Text = ""

        GridView1.DataBind()

    End Sub
End Class
