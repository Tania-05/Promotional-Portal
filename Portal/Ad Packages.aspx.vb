Imports System.Data.SqlClient
Imports System.Data
Public Class Ad_Packages
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btpk_Click(sender As Object, e As EventArgs) Handles btpk.Click
        Dim instr As String
        instr = "insert into ad_packages(Package_name,Duration,Price)values('" + txtpgname.Text + "','" + txtduraction.Text + "','" + txtprice.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtpgname.Text = ""
        txtdays.Text = ""
        txtprice.Text = ""
    End Sub
End Class