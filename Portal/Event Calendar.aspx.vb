Imports System.Data.SqlClient
Imports System.Data
Public Class Event_Calendar
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindbusiness()
        End If
    End Sub

    Protected Sub btevent_Click(sender As Object, e As EventArgs) Handles btevent.Click
        Dim instr As String
        instr = "insert into event calendar(Business_id,Event_name,Event_date,Event_description)values(" + eventbus.SelectedValue + ",'" + txtevent.Text + "','" + txtevdate.Text + "','" + txtevdes.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        txtevent.Text = ""
        txtevdate.Text = ""
        txtevdes.Text = ""
    End Sub
    Public Sub bindbusiness()
        Dim str As String
        str = "select Business_id,Business_name from businesses"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        eventbus.Items.Clear()

        eventbus.DataTextField = "Business_name"
        eventbus.DataValueField = "Business_id"
        eventbus.DataSource = dt
        eventbus.DataBind()
        eventbus.Items.Insert(0, "--Select--")
    End Sub

End Class