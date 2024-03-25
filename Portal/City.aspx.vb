Imports System.Data.SqlClient
Imports System.Data
Public Class City
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindstates()
            bindCntry()
        End If
    End Sub

    Protected Sub btcity_Click(sender As Object, e As EventArgs) Handles btcity.Click
        Dim instr As String
        instr = "insert into City(State_id,Country_id,City_name)values(" + dsid.SelectedValue + "," + dd1.SelectedValue + ",'" + txtcity.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtcity.Text = ""
    End Sub
   
    Public Sub bindCntry()
        Dim str As String
        str = "select Country_id,Country_name from country"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqldc As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dc As DataTable = New DataTable
        sqldc.Fill(dc)
        'dd1.Items.Clear()

        dd1.DataTextField = "Country_name"
        dd1.DataValueField = "Country_id"
        dd1.DataSource = dc
        dd1.DataBind()
        'dd1.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindstates()
        Dim str As String
        str = "select State_id,State_name from state where Country_id='" & dd1.SelectedValue & "'"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt1 As DataTable = New DataTable
        sqlda.Fill(dt1)


        dsid.DataTextField = "State_name"
        dsid.DataValueField = "State_id"
        dsid.DataSource = dt1
        dsid.DataBind()
        'dsid.Items.Insert(0, "--Select--")
    End Sub

   Protected Sub dd1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dd1.SelectedIndexChanged
        bindstates()
    End Sub
End Class