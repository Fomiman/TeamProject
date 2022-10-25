<%@page import="dao.User_boardDAO"%>
<%@page import="vo.User_board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1.0">
<title>게시판</title>
</head>

<body>

<%
	int pageNumber =1;

	if(request.getParameter("pagaNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
%>
	   
	    
	    
	<div class="container">
		<div class="row">
		<table class="table table-striped" style="text-align : center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color : #eeeeee; text-align : center;">번호</th>
					<th style="background-color : #eeeeee; text-align : center;">제목</th>
					<th style="background-color : #eeeeee; text-align : center;">작성자</th>
					<th style="background-color : #eeeeee; text-align : center;">작성일</th>
				</tr>
			</thead>
			<tbody>
			<%	
				User_boardDAO user_boardDAO = new User_boardDAO();
				ArrayList<User_board> list = user_boardDAO.getList(pageNumber);
				for(int i=0; i <list.size();i++){
					
			
			
			%>
				<tr>
					<td><%=list.get(i).getPost_no() %></td>
					<td><a href="view.jsp?post_id=<%=list.get(i).getMember_code() %>"><%=list.get(i).getMember_code() %></a></td>
					<td><%=list.get(i).getPost_date().substring(0,11) + list.get(i).getPost_date().substring(11,13)+"시"+list.get(i).getPost_date().substring(14,16)+"분" %></td>
					<td><%=list.get(i).getPost_pwd() %></td>
					<td><%=list.get(i).getPost_subject() %></td>
					<td><%=list.get(i).getPost_text() %></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<%
			if(pageNumber != 1){		
		%>
		<a href=".jsp?pageNumber=<%=pageNumber-1 %>" class="btn btn-success btn-arraw-left">이전</a>
		<%
			}if(user_boardDAO.nextPage(pageNumber + 1)){
		%>
		<a href="userBoard.jsp?pageNumber=<%=pageNumber+1 %>" class="btn btn-success btn-arraw-left">다음</a>
		<%
			}
		%>
		 <%	String member_id = null;
			if(session.getAttribute("member_id")!= null){
				member_id = (String) session.getAttribute("member_id");
			}
            	if (member_id == null){
            %>
            <a href="userLogin.usr" class="btn btn-primary pull-right">로그인 후 글쓰기</a>
			<%
            	}else{
            %>
            <a href="userBoardWrite.usr" class="btn btn-primary pull-right">글쓰기</a>
            <% 
            	}
            %>
		</div>
		
	</div>
</body>
</html>
</body>
</html>