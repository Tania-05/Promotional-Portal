Imports System.Data.SqlClient
Imports System.Data
Public Class Add_Business
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            binduser()

        End If
    End Sub

    Protected Sub btb_Click(sender As Object, e As EventArgs) Handles btb.Click
        Dim instr As String
        instr = "insert into businesses(User_id,Business_name,Description,Contact_info)values(" + duser.SelectedValue + ",'" + txtbname.Text + "','" + txtbdes.Text + "','" + txtinfo.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtbname.Text = ""
        txtinfo.Text = ""
        txtbdes.Text = ""
    End Sub
    Public Sub binduser()
        Dim str As String
        str = "select User_id,User_name from users"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        duser.Items.Clear()

        duser.DataTextField = "User_name"
        duser.DataValueField = "User_id"
        duser.DataSource = dt
        duser.DataBind()
        duser.Items.Insert(0, "--Select--")
    End Sub
End Class