<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dalimg.aspx.cs" Inherits="dalimg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53px;
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"  style="background-color:bisque">
        <div align="center">
            <br />
            <asp:Label ID="Label1" runat="server" Text="" Font-Size="Larger"></asp:Label>  
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Small" OnClick="LinkButton1_Click">重新上传?</asp:LinkButton>          
            <br /> 
            <asp:Image ID="Image1" runat="server" Height="85px" Width="66px" />
            &nbsp;<input type="button" name="name" value="确定" onclick="x_admin_close()" class="auto-style1" />
        </div>
    </form>
</body>
<script>    
    function x_admin_close()
    {
        window.parent.location.reload(); //刷新父页面
        window.location.href = "upimg.aspx";//跳回上传页

        //关闭页面
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }

</script>

</html>
