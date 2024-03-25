Imports System.Data.SqlClient
Imports System.Data
Public Class Ads
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindbusiness()
            bindcategory()
            bindadcy()
            bindstate()
            bindcity()
            bindadfeatured()
            bindpackages()


        End If
    End Sub

    Protected Sub btads_Click(sender As Object, e As EventArgs) Handles btads.Click
        Dim instr As String
        instr = "insert into ads(Business_id,Title,Description,Category_id,State_id,City_id,Featured_id,Package_id,Country_id)values(" + dbid.SelectedValue + ",'" + txttitle.Text + "','" + desads.Text + "'," + dcat.SelectedValue + "," + dstate.SelectedValue + "," + dcity.SelectedValue + "," + dadfea.SelectedValue + "," + dpgid.SelectedValue + "," + dadcy.SelectedValue + ")"
        Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
        cmduser.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        txttitle.Text = ""
        desads.Text = ""
    End Sub
    Public Sub bindbusiness()
        Dim str As String
        str = "select Business_id ,Business_name from businesses"
        Dim comn As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comn)
        Dim da As DataTable = New DataTable
        sqlda.Fill(da)
        dbid.Items.Clear()

        dbid.DataTextField = "Business_name"
        dbid.DataValueField = "Business_id"
        dbid.DataSource = da
        dbid.DataBind()
        dbid.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindcategory()
        Dim str As String
        str = "select Category_id,Category_name from categories"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlds As SqlDataAdapter = New SqlDataAdapter(com)
        Dim db As DataTable = New DataTable
        sqlds.Fill(db)
        dcat.Items.Clear()

        dcat.DataTextField = "Category_name"
        dcat.DataValueField = "Category_id"
        dcat.DataSource = db
        dcat.DataBind()
        dcat.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindadcy()
        Dim str As String
        str = "select Country_id,Country_name from country"
        Dim comnn As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqldq As SqlDataAdapter = New SqlDataAdapter(comnn)
        Dim dc3 As DataTable = New DataTable
        sqldq.Fill(dc3)
        dadcy.Items.Add("--Select--")
        dadcy.DataTextField = "Country_name"
        dadcy.DataValueField = "Country_id"
        dadcy.DataSource = dc3
        dadcy.DataBind()
    End Sub
    Public Sub bindstate()
        Dim strt As String
        strt = "select State_id,Country_id,State_name from state where Country_id='" & dadcy.SelectedValue & "'"
        Dim comna As SqlCommand = New SqlCommand(strt, co.connect())
        Dim sqldas As SqlDataAdapter = New SqlDataAdapter(comna)
        Dim dc1 As DataTable = New DataTable
        sqldas.Fill(dc1)
        dstate.Items.Add("--Select--")
        dstate.DataTextField = "State_name"
        dstate.DataValueField = "State_id"
        dstate.DataSource = dc1
        dstate.DataBind()
    End Sub
    Public Sub bindcity()
        Dim str As String
        str = "select City_id,State_id,City_name from City where State_id ='" & dstate.SelectedValue & "'"
        Dim comn As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqldd As SqlDataAdapter = New SqlDataAdapter(comn)
        Dim dc2 As DataTable = New DataTable
        sqldd.Fill(dc2)
        dcity.Items.Add("--Select--")
        dcity.DataTextField = "City_name"
        dcity.DataValueField = "City_id"
        dcity.DataSource = dc2
        dcity.DataBind()
    End Sub
    Public Sub bindadfeatured()
        Dim strs As String
        strs = "select Featured_id from featured_business"
        Dim comr As SqlCommand = New SqlCommand(strs, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comr)
        Dim de As DataTable = New DataTable
        sqlda.Fill(de)
        'dadfea.Items.Clear()

        dadfea.DataValueField = "Featured_id"
        dadfea.DataSource = de
        dadfea.DataBind()
        dadfea.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindpackages()
        Dim str As String
        str = "select Package_id,Package_name from ad_packages"
        Dim comt As SqlCommand = New SqlCommand(str, co.connect)
        Dim sqldt As SqlDataAdapter = New SqlDataAdapter(comt)
        Dim dg As DataTable = New DataTable
        sqldt.Fill(dg)
        dpgid.Items.Clear()

        dpgid.DataTextField = "Package_name"
        dpgid.DataValueField = "Package_id"
        dpgid.DataSource = dg
        dpgid.DataBind()
        dpgid.Items.Insert(0, "--Select--")
    End Sub

    Protected Sub dadcy_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dadcy.SelectedIndexChanged
        bindstate()
    End Sub

    Protected Sub dstate_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dstate.SelectedIndexChanged
        bindcity()
    End Sub
End Class