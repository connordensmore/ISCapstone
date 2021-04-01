Imports System.Data.SqlClient

Public Class SqlConnection
    Private v As String

    Public Sub New(v As String)
        Me.v = v
    End Sub

    Public Shared Widening Operator CType(v As SqlConnection) As Data.SqlClient.SqlConnection
        Throw New NotImplementedException()
    End Operator

    Public Sub Open()
        Throw New NotImplementedException()
    End Sub

    Public Sub Close()
        Throw New NotImplementedException()
    End Sub
End Class
