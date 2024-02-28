Imports System.Data.SqlClient
Imports System.Data
Public Class Discounts
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindAd()
        End If
    End Sub
    Protected Sub btdiscount_Click(sender As Object, e As EventArgs) Handles btdiscount.Click
        Dim instr As String
        instr = "insert into promo and discounts(Ad_id,Discount_percentage,Offer_description)values(" + disad.SelectedValue + "'" + txtper.Text + "','" + txtoffer.Text + "')"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        txtper.Text = ""
        txtoffer.Text = ""
    End Sub
    Public Sub bindAd()
        Dim str As String
        str = "select Ad_id,Title from ads"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        disad.Items.Clear()
        disad.Items.Add("--Select--")
        disad.DataTextField = "Title"
        disad.DataValueField = "Ad_id"
        disad.DataSource = dt
        disad.DataBind()
    End Sub

End Class