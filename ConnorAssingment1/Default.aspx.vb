
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
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

        SummaryBox.Items.Clear()

        Quantity.Focus()
    End Sub
    Protected Sub CalcButton_Click(sender As Object, e As EventArgs) Handles CalcButton.Click

        SummaryBox.Items.Clear()

        Dim SoupChoice As Double
        Dim Qnty As Integer

        Dim Subtotal As Double
        Dim Tax As Double
        Dim Taxtotal As Double
        Dim Total As Double


        Qnty = CInt(Quantity.Text)
        SoupChoice = CDbl(SoupSelection.SelectedValue)

        Tax = 0.07

        Subtotal = (Qnty * SoupChoice)

        Taxtotal = (Tax * Subtotal)

        Total = Subtotal + Taxtotal + DeliveryOptions.SelectedValue

        TotalLabel.Text = Total.ToString("c")

        SummaryBox.Items.Add("Order Info")
        SummaryBox.Items.Add("___________________")

        SummaryBox.Items.Add("Item: " + SoupSelection.SelectedItem.Text)
        SummaryBox.Items.Add("Quantity: " + Quantity.Text)

        SummaryBox.Items.Add("___________________")

        SummaryBox.Items.Add("Name: " + NameText.Text)
        SummaryBox.Items.Add("Phone Number: " + PhoneText.Text)
        SummaryBox.Items.Add("Email: " + EmailText.Text)
        SummaryBox.Items.Add("Delivery Address: " + AddressText.Text + ", " + CityText.Text + ", " + StateText.Text + " " + ZIPText.Text)

        SummaryBox.Items.Add("___________________")

        SummaryBox.Items.Add("Subtotal: " + Subtotal.ToString("c"))
        SummaryBox.Items.Add("Tax: " + Taxtotal.ToString("c"))
        SummaryBox.Items.Add("Delivery Method: " + DeliveryOptions.SelectedItem.Text + " $" + DeliveryOptions.SelectedValue.ToString)
        SummaryBox.Items.Add("Total: " + TotalLabel.Text)

        SummaryBox.Items.Add("___________________")

        SubmitButton.Visible = True

        SubmitButton.Focus()
    End Sub
    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        SubmitLabel.Text = "Your order has been placed! You should recive a confirmation email shortly! Thank You!"

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

        SummaryBox.Items.Clear()
    End Sub
End Class
