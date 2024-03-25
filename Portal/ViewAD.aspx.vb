Imports System.Data.SqlClient
Imports System.Data
Imports System.Collections
Imports System.IO
Public Class ViewAD
    Inherits System.Web.UI.Page
    Dim co As test = New test
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim cmd As SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            'bindgrid()
            BindDataList()
            BindDataList1()
            LoadServices()
        End If
    End Sub
    'Public Sub bindgrid()
    '    Dim str As String = "select * from images"
    '    Dim com As SqlCommand = New SqlCommand(str, co.connect())
    '    da = New SqlDataAdapter(com)
    '    ds = New DataSet()
    '    da.Fill(ds)
    '    gdImage.DataSource = ds
    '    gdImage.DataBind()

    'End Sub
    Protected Sub BindDataList()
        Dim dir As New DirectoryInfo(MapPath("image"))
        Dim files As FileInfo() = dir.GetFiles()
        Dim listItems As New ArrayList()
        For Each info As FileInfo In files
            listItems.Add(info)
        Next
        dtlist.DataSource = listItems
        dtlist.DataBind()
    End Sub
    Protected Sub BindDataList1()
        Dim dir As New DirectoryInfo(MapPath("image1"))
        Dim files As FileInfo() = dir.GetFiles()
        Dim listItems1 As New ArrayList()
        For Each info As FileInfo In files
            listItems1.Add(info)
        Next
        DataList1.DataSource = listItems1
        DataList1.DataBind()
    End Sub

    Protected Sub LoadServices()
        ' Retrieve services from the database

        Dim query As String = "SELECT category_name FROM categories"


        Using command As New SqlCommand(query, co.connect())

            Dim reader As SqlDataReader = command.ExecuteReader()
            DropDownList1.DataSource = reader
            DropDownList1.DataTextField = "category_name"

            DropDownList1.DataBind()
            reader.Close()
        End Using

    End Sub
End Class