<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>jQuery个性翻牌效果的导航菜单</title>
<meta http-equiv="content-type" content="text/html;charset=gb2312">
<style type="text/css">
ul,li{list-style:none;padding:0;margin:0;}
#btncell{width:300px;height:100px;border:1px solid #777;margin:50px auto;}
#btncell li{width:100px;float:left;height:50px;font-size:14px;text-align:center;line-height:28px;position:relative;z-index:1;}
#btncell li a{display:block;height:28px;border:2px solid #333;text-decoration:none;width:50px;background:#888;overflow:hidden;position:absolute;left:25px;top:10px;}
</style>
<script type="text/javascript" src="js/jquery1.3.2.js"></script>
<script language="javascript">
var nummove=0;
var numout=0;
$(function(){
$("#btncell li").hover(
function(){
if(nummove==0)
{
nummove=1;
$("a",this).animate({ height: "0px",top: "25px"}, 80,function(){nummove=0;});
$("a",this).animate({ height: "28px",top: "10px"}, 80);
$("a",this).css("background","yellow");
}
},
function(){
if(numout==0)
{
numout=1;
$("a",this).animate({ height: "0px",top: "25px"}, 80,function(){numout=0;});
$("a",this).animate({ height: "28px",top: "10px"}, 80);
$("a",this).css("background","#888");
numout=0;
}
}
)
$("#btncell li a").click(function(){
$(this).parents("li").css("z-index","2")
$(this).animate({ height: "558px",top: "-255px",width: "1000px",left: "-460px",opacity: 'toggle',lineHeight: '558px',fontSize: '500px'}, 1000);
$(this).animate({ height: "28px",top: "10px",width: "50px",left: "25px",opacity: 'toggle',lineHeight: '28px',fontSize: '12px'}, 400);
$(this).parents("li").css("z-index","1")
})
})
</script>
</head>
<body>
预览效果时左下角会提示错误，而且看不到效果，刷新一下就可以看到效果了。<ul id="btncell">
<li><a href="#">1</a></li>
<li><a href="#">2</a></li>
<li><a href="#">3</a></li>
<li><a href="#">4</a></li>
<li><a href="#">5</a></li>
<li><a href="#">6</a></li>
</ul>
</body>
</html>