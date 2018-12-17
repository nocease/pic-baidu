#pic-baidu


说明：

1.利用百度识图的接口，做了一个ASPX网站通用的图床，在开发者需要上传图片时使用。

2.无需占用自己的服务器空间或带宽储存或传输图片，仅需保存图片直链到自己的数据库。

3.源代码为两个aspx页面。



使用方法：
 
   方法1：使用iframe框架，将源代码中的upimg.aspx嵌入到自己网站的上传图片位置。
 
         <iframe src="img/upimg.aspx"></iframe>
 
   方法2：使用(弹出窗口页面)操作 ，将源代码中的upimg.aspx嵌入到自己网站的上传图片位置，调整弹出的窗口大小 。（弹出窗口页面在我的另一个GitHub项目中）
 
         onclick="x_admin_show('上传图片','img/upimg.aspx','300','200')"
 
 
  注：获取的图片直链保存在Session["img_url"]中。
  
        建议：
        1.在加载页面时判断是否存在Session["img_url"]，若存在，将它设为null；
        2.在把图片直链存到数据库中后，把Session["img_url"]设为null；
        

         
  

演示：
http://myfile.nocease.top/img.aspx

 
 ![Image text](https://image.baidu.com/search/down?tn=download&url=http://a.hiphotos.baidu.com/image/pic/item/b64543a98226cffc0e686912b4014a90f703ead4.jpg)
