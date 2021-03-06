<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/softwareCopyright.js"></script>
<script type="text/javascript" src="js/admin/insertOneTeacher.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/pms.css" />
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top: 5%;min-height:340px">
		<div class="row">
			<div class="col-lg-2">
				<jsp:include page="left.jsp"><jsp:param value="2" name="location" /></jsp:include>
			</div> 
			<div class="col-lg-10">
				<blockquote>
					<span> 单个录入 </span>
				</blockquote>
				<form id="insertOneTeacher" action="admin/insertOneTeacher.do" method="post" class="form-horizontal">
              		<div class="col-lg-12">&nbsp;</div>                           
                    <div class="col-lg-2"><label>教师工号：</label></div>
                    <div class="col-lg-4"><input type="text" name="teacher_no" id="teacher_no" class="form-control"></div>
					<span id="teacher_no_info"></span><br>
			        <div class="col-lg-2"><label>教师姓名：</label></div>
			        <div class="col-lg-4"><input type="text" name="teacher_name" class="form-control"></div>
			        
			        <div class="col-lg-12">&nbsp;</div>     
			        
				 	<div class="col-lg-2"><label>教师性别：</label></div>
				 	<div class="col-lg-4">
				 		<select id="teacher_sex" name="teacher_sex" class="form-control">
							<option value="0" selected="selected">女</option>
							<option value="1">男</option>
						</select>
					</div>
					<div class="col-lg-2"><label>教师职称：</label></div>
					<div class="col-lg-4">
						<select id="teacher_title" name="teacher_title" class="form-control">
							<option value="教授">教授</option>
							<option value="副教授">副教授</option>
							<option value="讲师">讲师</option>
							<option value="" selected="selected">其他</option>
						</select>
					</div>
					
					<div class="col-lg-12">&nbsp;</div>  
					
					<div class="col-lg-2"><label>出生年月：</label></div>
					<div class="col-lg-4">
						<input type="date" name="teacher_birth" min="1900-01-01" max="2019-09-26" class="form-control"/>
					</div>
					<div class="col-lg-2"><label>教师手机号：</label></div>
					<div class="col-lg-4">
						<input type="text" name="teacher_phoneNumber" id="teacher_phoneNumber" class="form-control"/>
					</div>
					
					<div class="col-lg-12">&nbsp;</div>  
					<div class="col-lg-2"><label>教师办公电话:</label></div>
					<div class="col-lg-4">
						<input type="text" name="teacher_officeNumber" id="teacher_officeNumber" class="form-control"/>
					</div>
					<div class="col-lg-2"><label>教师QQ:</label></div>
					<div class="col-lg-4">
						<input type="text" name="teacher_qq" id="teacher_qq" class="form-control"/>
					</div>
					
					<div class="col-lg-12">&nbsp;</div>  
					
					<div class="col-lg-2"><label>教师身份证：</label></div>
					<div class="col-lg-4">
						<input type="text" name="teacher_idCard" id="teacher_idCard" class="form-control"/>
					</div>
					<div class="col-lg-2"><label>教师邮箱：</label></div>
					<div class="col-lg-4">
						<input type="text" name="teacher_email" class="form-control"/>
					</div>
					
					<div class="col-lg-12">&nbsp;</div>  
					
					<div class="col-lg-2"><label>教师毕业院校：</label></div>
					<div class="col-lg-4">
						<input type="text" name="teacher_graUniversity" class="form-control"/>
					</div>
					<div class="col-lg-2"><label>来工大时间：</label></div>
					<div class="col-lg-4">
						<input type="date" name="teacher_comeTime" min="1900-01-01" max="2019-09-26" class="form-control"/>
					</div>
					
					<div class="col-lg-12">&nbsp;</div>  
					
					<div class="col-lg-2"><label>教师简介：</label></div>
					<div class="col-lg-4"><input type="text" name="teacher_info" class="form-control"/></div>
					
					<div class="col-lg-2"><label>教师研究所：</label></div>
					<div class="col-lg-4">
						<select id="teacher_institute" name="teacher_institute.institute_id" class="form-control">
							<option selected="selected" value="0">选择研究所</option>
							<c:forEach var="institute" begin="0" step="1"
										items="${requestScope.institutes}">
								<option value="${institute.institute_id}">${institute.institute_name}</option>
							</c:forEach>
						</select> 
					</div>
						<div class="col-lg-12">&nbsp;</div>
				<div class="col-lg-4 col-lg-offset-4">
					<input type="submit" class="btn btn-primary" value="确认录入">
				</div>
			</form>
			<div class="col-lg-12">&nbsp;</div>
			</div> 
		</div>
		
	</div>
	<jsp:include page="../../../layout/footer.jsp" />
</body>
</html>