Imports System.Data.SqlClient
Imports System.Data
Public Class Featured_Business
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindbusiness()
        End If
    End Sub

    Protected Sub btfeatured_Click(sender As Object, e As EventArgs) Handles btfeatured.Click
        Dim instr As String
        instr = "insert into featured_business(Business_id)values(" + Fbus.SelectedValue + ")"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

    End Sub
    Public Sub bindbusiness()
        Dim str As String
        str = "select Business_id,Business_name from businesses"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        Fbus.Items.Clear()
        Fbus.Items.Add("--Select--")
        Fbus.DataTextField = "Business_name"
        Fbus.DataValueField = "Business_id"
        Fbus.DataSource = dt
        Fbus.DataBind()
    End Sub

    
End Class