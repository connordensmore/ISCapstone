﻿Imports System.Data.SqlClient
Imports Microsoft.ASP.Net.Identity

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Context.User.Identity.IsAuthenticated) Then
            lblwelcome.Text = "Hello " + Context.User.Identity.Name

        Else

            lblwelcome.Text = "Hello Guest | Register Your Account Now! "

        End If
    End Sub
End Class


