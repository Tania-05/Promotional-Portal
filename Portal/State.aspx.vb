Imports System.Data.SqlClient
Imports System.Data
Public Class State
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindCountry()
        End If
    End Sub

    Protected Sub btstate_Click(sender As Object, e As EventArgs) Handles btstate.Click
        Dim instr As String
        instr = "insert into state(Country_id,State_name)values(" + txtscy.SelectedValue + ",'" + statename.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        statename.Text = ""
    End Sub
    Public Sub bindCountry()
        Dim str As String
        str = "select Country_id,Country_name from country"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqldc As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dc As DataTable = New DataTable
        sqldc.Fill(dc)
        txtscy.Items.Clear()
        txtscy.Items.Add("--Select--")
        txtscy.DataTextField = "Country_name"
        txtscy.DataValueField = "Country_id"
        txtscy.DataSource = dc
        txtscy.DataBind()
    End Sub
End Class