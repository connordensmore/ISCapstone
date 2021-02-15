
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        'Clear all the fields on screen

        Principle.Text = ""
        Pct_Rate.Text = ""
        Terms.Text = ""
        MO_Payment.Text = ""
        TOTAL_Payment.Text = ""
        TOTAL_Interest.Text = ""
        MO_INT.Text = ""
        MortSummary.Items.Clear()


    End Sub
    Protected Sub CalculateButton_Click(sender As Object, e As EventArgs) Handles CalculateButton.Click
        Dim prin As Integer
        Dim int As Double
        Dim trm As Integer

        Dim mthpynt As Double
        Dim ttlpymnt As Double
        Dim ttlint As Double
        Dim mthint As Double

        'convert values 
        prin = CInt(Principle.Text)
        int = CInt(Pct_Rate.Text)
        trm = CInt(Terms.Text)


        'calculate the amounts
        'mthpynt = (prin * int)testing
        mthpynt = prin * (int / 12) / (1 - (1 + (int / 12) ^ trm))
        ttlpymnt = prin * int * trm
        ttlint = (prin * (1 + (int * trm))) - prin
        mthint = int / 12

        'put total into label
        MO_Payment.Text = mthpynt.ToString("c")
        MO_INT.Text = mthint.ToString()
        TOTAL_Payment.Text = ttlpymnt.ToString("c")
        TOTAL_Interest.Text = ttlint.ToString("c")
        'MO_INT.Text = mthint.ToString("p")

        'add items to the listbox
        MortSummary.Items.Add("Your Mortgage Details")
        MortSummary.Items.Add("######################")


        MortSummary.Items.Add("Monthly Payment: $ " & MO_Payment.Text)
        MortSummary.Items.Add("Loan Principle Amount: $ " & Principle.Text)
        MortSummary.Items.Add("Monthly Interest Rate: " & MO_INT.Text & "%")
        MortSummary.Items.Add("Number of Months: " & Terms.Text)
        MortSummary.Items.Add("Total Interest Paid: " & TOTAL_Interest.Text)
        MortSummary.Items.Add("Sum of All Payments:" & TOTAL_Payment.Text)
    End Sub
End Class
