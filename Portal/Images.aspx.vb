Imports System.Data.SqlClient
Imports System.Data
Public Class Images
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindAd()
        End If
    End Sub

    Protected Sub btimg_Click(sender As Object, e As EventArgs) Handles btimg.Click
        Dim instr As String
        instr = "insert into images(Ad_id,Image_Data)values(" + Imgad.SelectedValue + ",'" + Imgdata.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        Imgdata.Text = ""
    End Sub
    Public Sub bindAd()
        Dim str As String
        str = "select Ad_id,Title from ads"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        Imgad.Items.Clear()
        Imgad.Items.Add("--Select--")
        Imgad.DataTextField = "Title"
        Imgad.DataValueField = "Ad_id"
        Imgad.DataSource = dt
        Imgad.DataBind()

    End Sub

   
End Class