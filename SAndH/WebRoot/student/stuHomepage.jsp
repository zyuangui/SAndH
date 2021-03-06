<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="css/stuHomepage.css">
    
  </head>
  
  <body
   style="background:url(images/studentBackground1.jpg) no-repeat; background-color:#eaf1fd;">
 
  <!--  引入头部 -->
  <jsp:include page="/student/stuHomeHead.jsp"/>
  
    <!--  学生主页的主体部分 -->
    <div class="body">
       <div class="body-head">
         <div class="body-head-left" >
         <form action="ResUploadAction">
             <input type="file" name="resource"/>
             <input type="submit" value="提交"/>
         </form> 
         <%-- <s:form action="ResUploadAction" namespace="/" method="post" enctype="multipart/form-data">
                 <s:file name="resource" label="请选择文件"/>
                 <s:submit value="上传"/>
   		</s:form> --%>
   		<img src="<s:property value='resourcePath'/>" width="150" height="150"/>
   		
         <!-- <a class="portrait" href="">上传头像</a> -->
         </div>
	            <div class="body-head-right" >
	            	<table>
	                	<tr>
	                    	<td align="right" style="width:80px;">欢迎你：</td>
	                    	
	                        <td>${stu.stu_Name }</td>
	                        <td align="right" style="width:200px; color:#FFF;"><a href="" style="color:#FFF;">退出登录</a><td>
	                    </tr>
	                    <tr>
	                    	<td align="right" style="width:80px;">所在学院：</td>
	                    	<%-- ${stu.stu_Institute } ${stu.stu_Class } --%>
	                        <td>${stu.stu_Institute}&nbsp;&nbsp;&nbsp;&nbsp;</td>
	                    </tr>
	                    <tr>
	                    	<td align="right" style="width:80px;">所在班级：</td>
	                    	<%-- ${stu.stu_Signature } --%>
	                        <td>${stu.stu_Class }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	                        <td style="width:300px;">最近登录时间：${nowDate }</td>
	                        
	                    </tr>
	                </table>
	            </div>
       </div>
       
       <div class="body-left">
           	<ul>
	            	<li><a class="Home" href="student/stuHomepage.jsp"><img src="images/iconfont-shouyeshouye.png" width="15px" height="15px">&nbsp;&nbsp;个人首页</a></li>
	                <li><a href="FindStuInfoAction"><img src="images/iconfont-gerenxinxi.png" width="15px" height="15px">&nbsp;&nbsp;个人资料</a></li>
	                <li><a href="UpdateStuInfoServlet"><img src="images/iconfont-gerenxinxi.png" width="15px" height="15px">&nbsp;&nbsp;修改信息</a></li>
	                <li><a href="stu_jsp/stuFindRes.jsp"><img src="images/iconfont-weiduhuitie.png" width="15px" height="15px">&nbsp;&nbsp;查找资源</a></li>
	                <li><a href="stuPostServlet?stuId=${stu.stu_Id }&stuName=${stu.stu_Name}"><img src="images/iconfont-fatie.png" width="15px" height="15px">&nbsp;&nbsp;我的帖子</a></li>
	                <li><a href="#"><img src="images/iconfont-weiduhuitie.png" width="15px" height="15px">&nbsp;&nbsp;我的回帖</a></li>
	                <li><a href="#"><img src="images/iconfont-zuoyeicon.png" width="15px" height="15px">&nbsp;&nbsp;我的作业</a></li>
	                <li><a href="#"><img src="images/iconfont-wenda.png" width="15px" height="15px">&nbsp;&nbsp;我的问答</a></li>
	                <li><a href="#"><img src="images/iconfont-kebiao.png" width="15px" height="15px">&nbsp;&nbsp;我的课表</a></li>
	                <li><a href="#"></a></li>
	                <li><a href="#" class="Home2"></a></li>               
	            </ul>
       </div>
       
       <div class="body-right"></div>
    </div>
    <!-- 尾部 -->
     <jsp:include page="/student/stuHomeFooter.jsp"/>  
  </body>
</html>
