Imports System.Data.SqlClient
Imports System.Data
Public Class Category
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btcat_Click(sender As Object, e As EventArgs) Handles btcat.Click
        Dim instr As String
        instr = "insert into categories(Category_name)values('" + txtcatname.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtcatname.Text = ""
    End Sub
End Class