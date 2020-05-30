<%--
  Created by IntelliJ IDEA.
  User: xugang2
  Date: 2020/5/27
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>尚筹网-秒杀页面</title>
    <script src="jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
</head>
<body>
<form action="sk/doSecondKill" method="post">
    <input type="hidden" name="id" value="10001">
    <a  href="#">点击参与1元秒杀Iphone11promax</a>
</form>
<script type="text/javascript">
    $("a").click(function () {

        $.ajax({
            type:"post",
            url:$("form").prop("action"),
            data:$("form").serialize(),
            success: function (res) {
                if(res=="ok"){
                    alert("秒杀成功");
                }else{
                    alert(res);
                    $("a").prop("disabled" , true);
                }
            }
        });
        return false;
    });
</script>

</body>
</html>
