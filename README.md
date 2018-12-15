#pic-baidu


说明：

1.利用百度识图，做了一个ASPX网站通用的图床，在开发者需要上传图片时使用。

2.无需占用自己的服务器空间或带宽储存或传输图片，仅需保存图片直链到自己的数据库。

3.源代码为两个aspx页面。



使用方法：

方法1：使用iframe框架，将源代码中的upimg.aspx嵌入到自己网站的上传图片位置，调整iframe大小 。

   <iframe src="img/upimg.aspx"></iframe>

方法2：使用(弹出窗口页面)操作 ，将源代码中的upimg.aspx嵌入到自己网站的上传图片位置，调整弹出的窗口大小 。（弹出窗口页面在我的另一个GitHub项目中）

   onclick="x_admin_show('上传图片','img/upimg.aspx','300','200')"

获取的图片直链保存在Session["img_url"]中。


演示：
http://myfile.nocease.top/img.aspx
