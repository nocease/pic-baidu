# pic-baidu
利用百度识图，做一个ASPX网站通用的图床


使用方法：
1.
在网页中插入
<iframe src =“本站域名/img/upimg.aspx"style =”身高：115px; 宽度：310px“> </ iframe>
2.if(Session["img_url"]==NULL) {未上传图片} else {URL=Session["img_url"].ToString()}
