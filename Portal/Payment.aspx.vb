Imports System.Data.SqlClient
Imports System.Data
Public Class Payment
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            binduser()
            bindAd()
        End If
    End Sub

    Protected Sub btpay_Click(sender As Object, e As EventArgs) Handles btpay.Click
        Dim instr As String
        instr = "insert into payment(User_id,Ad_id,Amount,Status)values(" + dpauser.SelectedValue + "," + pyad.SelectedValue + ",'" + pyamt.Text + "','" + pystatus.SelectedItem.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        pyamt.Text = ""
    End Sub
    Public Sub binduser()
        Dim str As String
        str = "select User_id,User_name from users"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        dpauser.Items.Clear()
        dpauser.Items.Add("--Select--")
        dpauser.DataTextField = "User_name"
        dpauser.DataValueField = "User_id"
        dpauser.DataSource = dt
        dpauser.DataBind()
    End Sub
    Public Sub bindAd()
        Dim str As String
        str = "select Ad_id,Title from ads"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        pyad.Items.Clear()
        pyad.Items.Add("--Select--")
        pyad.DataTextField = "Title"
        pyad.DataValueField = "Ad_id"
        pyad.DataSource = dt
        pyad.DataBind()

    End Sub
End Class