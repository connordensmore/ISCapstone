
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("http://www.kennesaw.edu")
    End Sub
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        'Clear all the fields on screen

        Name.Text = ""
        Phone.Text = ""
        Quantity.Text = "1"

        AllergyCheckBox.Checked = False
        Condiments.ClearSelection()
        SelectBread.SelectedIndex = "0"
        PlatterChoice.ClearSelection()

        DrinkChoice.SelectedIndex = "0"
        Delivery.SelectedIndex = "0"

        Name.Focus()

    End Sub

    Protected Sub CalculateButton_Click(sender As Object, e As EventArgs) Handles CalculateButton.Click

    End Sub

    Protected Sub ConfirmButton_Click(sender As Object, e As EventArgs) Handles ConfirmButton.Click
        LabelMessage.Text = "Thank You for Your Order! Your Order is Being Processed."
    End Sub
End Class
