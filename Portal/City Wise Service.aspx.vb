Imports System.Data.SqlClient
Imports System.Data
Public Class City_Wise_Service
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindAd()
            bindcity()
        End If
    End Sub

    Protected Sub btservice_Click(sender As Object, e As EventArgs) Handles btservice.Click
        Dim instr As String
        instr = "insert into city wise services(Ad_id,City_id)values(" + Sadid.SelectedValue + "," + Scity.SelectedValue + ")"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

    End Sub
    Public Sub bindAd()
        Dim str As String
        str = "select Ad_id,Title from ads"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        Sadid.Items.Clear()
        Sadid.Items.Add("--Select--")
        Sadid.DataTextField = "Title"
        Sadid.DataValueField = "Ad_id"
        Sadid.DataSource = dt
        Sadid.DataBind()

    End Sub
    Public Sub bindcity()
        Dim str As String
        str = "select City_id,City_name from City"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt1 As DataTable = New DataTable
        sqlda.Fill(dt1)
        Scity.Items.Clear()
        Scity.Items.Add("--Select--")
        Scity.DataTextField = "City_name"
        Scity.DataValueField = "City_id"
        Scity.DataSource = dt1
        Scity.DataBind()

    End Sub

End Class