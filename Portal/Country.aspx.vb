Imports System.Data.SqlClient
Imports System.Data
Public Class Country
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btcountry_Click(sender As Object, e As EventArgs) Handles btcountry.Click
        Dim instr As String
        instr = "insert into country(Country_name)values('" + txtcyname.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtcyname.Text = ""
    End Sub
End Class