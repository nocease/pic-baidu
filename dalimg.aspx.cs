using System;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _2222 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string json = Request["json"];
        try
        {
        string[] url = json.Split('"');
        Label1.Text = "上传成功！";
        string hppts = "https://image.baidu.com/search/down?tn=download&url=";
        Session["img_url"] =hppts+ url[5];
        TextBox1.Text = Session["img_url"].ToString();
        }
        catch
        {
            Label1.Text = "上传失败！";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["img_url"] =null;
        Response.Redirect("upimg.aspx");
    }
}