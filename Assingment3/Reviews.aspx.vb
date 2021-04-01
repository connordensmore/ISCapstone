
Partial Class Default2
    Inherits System.Web.UI.Page


    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Balloon.mdf;Integrated Security=True")
    Protected Sub btsubmit_Click(sender As Object, e As EventArgs) Handles btsubmit.Click
        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Reviews (CustomerName, EventName, ReviewDate, Review) VALUES ('" & tbname.Text & "', '" & ddevent.SelectedValue & "','" & lbldate.Text & "', '" & tbreview.Text & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        lblsubmit.Text = "Thank You, " & tbname.Text & ". Your review has been added!"

        tbname.Text = ""
        ddevent.SelectedIndex = 0
        tbreview.Text = ""

        tbname.Focus()

        fvreviews.DataBind()

    End Sub
    Protected Sub btclear_Click(sender As Object, e As EventArgs) Handles btclear.Click
        tbname.Text = ""
        ddevent.SelectedIndex = 0
        tbreview.Text = ""
        lblsubmit.Text = ""

        tbname.Focus()
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbldate.Text = DateTime.Now.ToString("d")
    End Sub
End Class
