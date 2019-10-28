<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>管理员登录后台管理系统-1.0</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
    <#include "${request.contextPath}/common/common.ftl">

</head>
<body class="login-bg">
    <div class="login">
        <div class="message">后台管理系统登录</div>
        <div id="darkbannerwrap"></div>
        <form method="post" class="layui-form" >
            <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
            <input class="loginin" value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
            <div>
            	前端静态展示，请随意输入，即可登录。
            </div>
        </form>
    </div>
</body>

<script type="text/javascript">
    layui.extend({
        admin: '${request.contextPath}/js/admin'
    });
    layui.use(['form','admin'], function(){
      var form = layui.form
        ,admin = layui.admin;

      //监听提交
      form.on('submit(login)', function(data){
        $.ajax({
            type: "POST",
            //请求的媒体类型
            url: "${request.contextPath}/login",
            data: data.field,
            success: function(result) {
                if (result.code === 0) {
                    location.href='${request.contextPath}/admin'
                } else {
                    layer.alert(result.msg, {
                      icon: 2
                    })
                }
            },
            error: function(e){
                layer.alert(e, {
                  icon: 2
                })
            }
        });

        return false;
      });
    });
</script>
</html>