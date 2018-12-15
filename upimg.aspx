<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upimg.aspx.cs" Inherits="_1111" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="http://common.jb51.net/jslib/jquery/jquery.min.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 75px;
            height: 24px;
        }

    </style>
</head>
<body style="background-color:bisque">  
    <div align="center">
    <form method="post"  enctype="multipart/form-data">
        <p>请选择jpg,png,gif格式的图片：</p>
        <input type="file" name="file" id="file" value="" accept=".jpg,.png,.gif"/>
        <br /> 
        <input type="button" name="name" id="button1" value="确定" onclick="button1_click()" class="auto-style1" />
    </form>
    <input type="hidden" runat="server" id="json">

<progress style="display:none"></progress>
        <br />
<input type="text" id="tip" name="name" style="border:0;color:red;background-color:bisque;visibility:hidden" value="请稍等。。。"/>
<%--<div id="res"></div>--%>
    </div>

<script>
$(':button').click(function(){
    var formData = new FormData($('form')[0]);
    $.ajax({
        url: 'http://image.baidu.com/pcdutu/a_upload?fr=html5&target=pcSearchImage&needJson=true',
        type: 'POST',
        xhr: function() {
            myXhr = $.ajaxSettings.xhr();
            if(myXhr.upload){
                myXhr.upload.addEventListener('progress',progressHandlingFunction, false);
            }
            return myXhr;
        },
        beforeSend: function(){
			$('progress').show();
		},
        success: function(data){
			console.log(data);
			$('#res').html(JSON.stringify(data));
            //alert("上传成功，json:"+data);
            window.location = "dalimg.aspx?json=" + data;
			//window.location.reload();
		},
        error: function(data){
			console.log(data);
		},
        data:formData,
        cache: false,
        contentType: false,
        processData: false
    });
});
function progressHandlingFunction(e){
    if(e.lengthComputable){
        $('progress').attr({value:e.loaded,max:e.total});
    }
    }
function button1_click() {
        document.getElementById("button1").setAttribute("disabled", true);
        document.getElementById("tip").style.visibility = "visible";
    }
</script>
</body>
</html>
