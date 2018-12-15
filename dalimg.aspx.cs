using System;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dalimg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string json = Request["json"];
        try
        {
        string[] url = json.Split('"');
        Label1.Text = "上传成功！";
        string hppts = "https://image.baidu.com/search/down?tn=download&url=";
        Session["img_url"] = hppts + url[5];  //获取直连
        Image1.ImageUrl = Session["img_url"].ToString();
        }
        catch
        {
            Label1.Text = "上传失败！";
        }

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["img_url"] = null;
        Response.Redirect("upimg.aspx");
    }
}