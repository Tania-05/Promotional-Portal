Imports System.Data.SqlClient
Imports System.Data
Public Class Social_Media
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindAd()
        End If
    End Sub
    


    Protected Sub btmedia_Click(sender As Object, e As EventArgs) Handles btmedia.Click

        Dim instr As String
        instr = "insert into social media(Ad_id,Likes,Share,Comment)values(" + mediaad.SelectedValue + ",'" + mlike.Text + "','" + mshare.Text + "','" + mcomment.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        mlike.Text = ""
        mshare.Text = ""
        mcomment.Text = ""
    End Sub
    Public Sub bindAd()
        Dim str As String
        str = "select Ad_id from ads"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        mediaad.Items.Clear()

        mediaad.DataValueField = "Ad_id"
        mediaad.DataSource = dt
        mediaad.DataBind()
        mediaad.Items.Insert(0, "--Select--")
    End Sub
End Class