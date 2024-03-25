Imports System.Data.SqlClient
Imports System.Data
Public Class profile
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Dim loggedInUser As String = Session("Username")
            If Not String.IsNullOrEmpty(loggedInUser) Then

                Dim query As String = "SELECT * FROM users WHERE User_name = @Username"
                Using cmd As New SqlCommand(query, co.connect())
                    cmd.Parameters.AddWithValue("@Username", loggedInUser)

                    Using reader As SqlDataReader = cmd.ExecuteReader()
                        If reader.Read() Then
                            lblEmail.Text = reader("Email").ToString()
                            lblUsername.Text = reader("User_name").ToString()
                            lblName.Text = reader("User_type").ToString()


                        End If


                    End Using
                End Using
                Dim query1 As String = "SELECT * FROM businesses WHERE Business_name = @Username"
                Using cmd As New SqlCommand(query1, co.connect())
                    cmd.Parameters.AddWithValue("@Username", loggedInUser)

                    Using reader As SqlDataReader = cmd.ExecuteReader()
                        If reader.Read() Then
                            lblbus.Text = reader("Business_name").ToString()
                            lblbusdes.Text = reader("Description").ToString()
                            lblContactNumber.Text = reader("contact_info").ToString()

                        End If


                    End Using
                End Using

            End If
        End If
    End Sub
End Class