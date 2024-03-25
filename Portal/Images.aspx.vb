Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Public Class Images
    Inherits System.Web.UI.Page
    Dim co As test = New test
    Dim pth, filename As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindAd()
        End If
    End Sub

    Protected Sub btimg_Click(sender As Object, e As EventArgs) Handles btimg.Click
        'Try
        Dim instr As String

        'Uploadfile()
        If FileUpload1.HasFile Then
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName)
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/image/") + filename)

            pth = "~/image/" + filename
            instr = "insert into images(Ad_id,Image_Data,Description)values(" + Imgad.SelectedValue + ",'" + pth + "','" + imgdes.Text + "')"
            Dim cmduser As SqlCommand = New SqlCommand(instr, co.connect())
            cmduser.ExecuteNonQuery()
            Response.Write("<script>alert('data saved');</script>")
        Else
            Response.Write("<script>alert('Image Not Selected');</script>")
        End If

        'Catch
        'Dim ex As Exception
        'upload.Text = ex.Message
        ' End Try


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