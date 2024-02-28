Imports System.Data.SqlClient
Imports System.Data
Public Class User_Signin
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub newuser_Click(sender As Object, e As EventArgs) Handles newuser.Click
        Response.Redirect("Signup.aspx")
    End Sub

    Protected Sub siginfg_Click(sender As Object, e As EventArgs) Handles siginfg.Click
        Response.Redirect("Forgot Password.aspx")
    End Sub

    Protected Sub btuslg_Click(sender As Object, e As EventArgs) Handles btuslg.Click
        If rb1.Checked = True Then
            Dim str As String
            str = "SELECT * FROM  users WHERE Email = Email  AND Password = Password"
            Dim com As SqlCommand = New SqlCommand(str, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(com)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)
            If ds.Rows.Count > 0 Then
                Response.Redirect("Ads.aspx")
            Else
                Response.Write("<script>alert('Invalid Email or Password');</script>")

            End If
        ElseIf rb2.Checked = True Then
            Dim str As String
            str = "SELECT * FROM  User_table WHERE Email =  Email AND Password = Password "
            Dim comm As SqlCommand = New SqlCommand(str, co.connect)
            Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comm)
            Dim dsp As DataTable = New DataTable
            sqlda.Fill(dsp)
            If dsp.Rows.Count > 0 Then
                Response.Redirect("userreg.aspx")
            Else
                Response.Write("<script>alert('Invalid Email or Password');</script>")

            End If
        End If
    End Sub
End Class