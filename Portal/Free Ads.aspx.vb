Imports System.Data.SqlClient
Imports System.Data
Public Class Free_Ads
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindAd()
        End If
    End Sub

    Protected Sub btfree_Click(sender As Object, e As EventArgs) Handles btfree.Click
        Dim instr As String
        instr = "insert into free ads(Ad_id,Expiry_date)values('" + Freead.SelectedItem.Text + "','" + Freedate.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        Freedate.Text = ""
    End Sub
    Public Sub bindAd()
        Dim str As String
        str = "select Ad_id,Title from ads"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        Freead.Items.Clear()
        Freead.Items.Add("--Select--")
        Freead.DataTextField = "Title"
        Freead.DataValueField = "Ad_id"
        Freead.DataSource = dt
        Freead.DataBind()
    End Sub

    
End Class