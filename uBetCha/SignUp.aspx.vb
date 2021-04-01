﻿Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail

Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub CreateUserWizard1_CreatedUser(sender As Object, e As EventArgs) Handles CreateUserWizard1.CreatedUser
        Dim userId As Integer = 0
        Using con As New SqlConnection("DataSource=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|\Database.mdf;IntegratedSecurity=True")
            Using cmd As New SqlCommand("Insert_Users")
                Using sda As New SqlDataAdapter
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.AddWithValue("@Username", tbUsername.Text.Trim())
                    cmd.Parameters.AddWithValue("@Password", tbPassword.Text.Trim())
                    cmd.Parameters.AddWithValue("@Email", tbEmail.Text.Trim)
                    cmd.Connection = con
                    con.Open()
                    userId = Convert.ToInt32(cmd.ExecuteScalar())
                    con.Close()
                End Using
            End Using
            Dim messege As String = String.Empty
            Select Case userId
                Case -1
                    messege = "Username already exists."
                Case -2
                    messege = "This email address has already been used before."
                Case Else
                    messege = "Registration has been sucessful! Please check your email  to complete activation!"
                    SendActivationEmail(userId)
                    Exit Select
            End Select
            ClientScript.RegisterStartupScript([GetType](), "alert",
(Convert.ToString("alert( ' ") & messege) + " ');", True)
        End Using
    End Sub
    Private Sub SendActivationEmail(userId As Integer)
        Dim activationCode As String = Guid.NewGuid().ToString()
        Using con As New SqlConnection("DataSource=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|\Database.mdf;IntegratedSecurity=True")
            Using cmd As New SqlCommand("INSERT INTO UserActivation VALUES(@UserId,@ActivationCode)")
                Using sda As New SqlDataAdapter
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@UserId", userId)
                    cmd.Parameters.AddWithValue("@ActivationCode", activationCode)
                    cmd.Connection = con
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                End Using
            End Using
        End Using
        Using mm As New MailMessage("whatwearwhenhelp@gmail.com", tbEmail.Text)
            mm.Subject = "What WEAR When Account Activation"
            Dim body As String = "Hello " + tbUserName.Text.Trim() + ","
            body += "<br /><br />Thank you for choosing What WEAR When. Our goal is to make selecting "
            body += "your outfit for any occasion as stress free as possible."
            body += "<br />Please click the link below to activate your account."
            body += "<br />For security purposes the link will expire in 24 hours."
            body += "<br /><br />Thank you and welcome!"
            body += "<br />-UBetCha"
            body += "<br /><br /><a href = '" +
Request.Url.GetLeftPart(UriPartial.Authority) + Page.ResolveUrl("~/Activation.aspx?ActivationCode=" & activationCode) + "'> Click here to activate your account!"
            mm.Body = body
            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New System.Net.NetworkCredential()
            NetworkCred.UserName = "ubetcha2021ksu@gmail.com"
            NetworkCred.Password = "BcJ4cYT8TJSJ"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 465
            smtp.Send(mm)
        End Using
    End Sub
End Class
