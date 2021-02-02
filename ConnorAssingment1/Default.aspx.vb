
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Quantity_TextChanged(sender As Object, e As EventArgs) Handles Quantity.TextChanged

    End Sub
    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        SubmitLabel.Text = "Your Order Has Been Placed!"
        SubmitLabel.Focus()
    End Sub
    Protected Sub ConfirmButton_Click(sender As Object, e As EventArgs) Handles ConfirmButton.Click
        Quantity.Text = "1"
        NameText.Text = ""
        AddressText.Text = ""
        CityText.Text = ""
        StateText.Text = ""
        ZIPText.Text = ""
        PhoneText.Text = ""
        EmailText.Text = ""
        ConfirmEmailText.Text = ""

        DeliveryOptions.SelectedIndex = "0"

        Quantity.Focus()
    End Sub
    Protected Sub ZT_Click(sender As Object, e As EventArgs) Handles ZT.Click
        ChoiceLabel.Text = "You have chosen Zuppa Toscana Soup!"
        SoupPrice.Text = "$9.99"
    End Sub
End Class
