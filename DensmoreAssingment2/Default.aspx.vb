
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnclear_Click(sender As Object, e As EventArgs) Handles btnclear.Click
        txtmonths.Text = ""
        txtprinciple.Text = ""
        txtyearlypercent.Text = ""

        lblintrestpaid.Text = ""
        lblmonpayments.Text = ""
        lblsumofpayments.Text = ""
    End Sub
    Protected Sub btncalculate_Click(sender As Object, e As EventArgs) Handles btncalculate.Click
        Dim principle As Integer
        Dim yearlyrate As Integer
        Dim months As Integer

        Dim monthint As Double

        Dim monthlypayment As Double
        Dim sumpayment As Double
        Dim totalint As Double

        principle = CInt(txtprinciple.Text)
        yearlyrate = CInt(txtyearlypercent.Text)
        months = CInt(txtmonths.Text)

        monthint = (yearlyrate / 100) / 12

        monthlypayment = principle * monthint / (1 - (1 / (1 + monthint) ^ months))
        sumpayment = monthlypayment * months
        totalint = sumpayment - principle

        lblmonpayments.Text = monthlypayment.ToString("c")
        lblsumofpayments.Text = sumpayment.ToString("c")
        lblintrestpaid.Text = totalint.ToString("c")

    End Sub
End Class
