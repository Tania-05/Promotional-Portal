Imports System.Data.SqlClient
Imports System.Data
Public Class User_Signup
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim instr As String
        instr = "insert into users(User_name,Email,Password,User_type)values('" + signUpName.Text + "','" + signUpEmail.Text + "','" + signUpPassword.Text + "','" + DropDown1.SelectedItem.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        signUpName.Text = ""
        signInEmail.Text = ""
        signInPassword.Text = ""
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Sign In.aspx")
    End Sub
End Class