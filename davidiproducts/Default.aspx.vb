Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("http://www.kennesaw.edu")
    End Sub
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        'Clear all the fields on screen

        Name.Text = ""
        Address.Text = ""
        City.Text = ""
        State.Text = ""
        Phone.Text = ""

        Quantity.Text = "1"

        Products_List.SelectedIndex = "0"
        Shipping.SelectedIndex = "0"

        Name.Focus()

    End Sub

    Protected Sub CalculateButton_Click(sender As Object, e As EventArgs) Handles CalculateButton.Click

    End Sub

    Protected Sub ConfirmButton_Click(sender As Object, e As EventArgs) Handles ConfirmButton.Click
        Message.Text = "Woof Woof! Thank You for Your Order!"
    End Sub
End Class