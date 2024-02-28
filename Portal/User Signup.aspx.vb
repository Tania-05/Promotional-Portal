Imports System.Data.SqlClient
Imports System.Data
Public Class Signup
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub lkup_Click(sender As Object, e As EventArgs) Handles lkup.Click
        Response.Redirect("SIGN IN.aspx")
    End Sub

    Protected Sub btr_Click(sender As Object, e As EventArgs) Handles btr.Click
        Dim instr As String
        instr = "insert into users(User_name,Email,Password,User_type)values('" + rgname.Text + "','" + remail.Text + "','" + rpass.Text + "','" + rtype.SelectedItem.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        rgname.Text = ""
        remail.Text = ""
        rpass.Text = ""
    End Sub
End Class