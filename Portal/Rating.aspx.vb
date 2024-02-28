Imports System.Data.SqlClient
Imports System.Data
Public Class Rating
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindAd()
            binduser()
        End If
    End Sub

    Protected Sub btrating_Click(sender As Object, e As EventArgs) Handles btrating.Click
        Dim instr As String
        instr = "insert into rating(Ad_id,User_id,Rating_values,Feedback)values(" + Radid.SelectedValue + "," + Ruser.SelectedValue + "," + Rvalue.SelectedValue + ",'" + rfeedback.Text + "' )"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        rfeedback.Text = ""
    End Sub
    Public Sub bindAd()
        Dim str As String
        str = "select Ad_id,Title from ads"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        Radid.Items.Clear()
        Radid.Items.Add("--Select--")
        Radid.DataTextField = "City_name"
        Radid.DataValueField = "Ad_id"
        Radid.DataSource = dt
        Radid.DataBind()

    End Sub
    Public Sub binduser()
        Dim str As String
        str = "select User_id,User_name from users"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        Ruser.Items.Clear()
        Ruser.Items.Add("--Select--")
        Ruser.DataTextField = "User_name"
        Ruser.DataValueField = "User_id"
        Ruser.DataSource = dt
        Ruser.DataBind()
    End Sub
End Class