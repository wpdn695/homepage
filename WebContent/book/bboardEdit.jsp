<%@page import="book.board.vo.BookBoard"%>
<%@page import="book.borad.dao.BookBoardDao"%>
<%@ page language="java" contentType="text/html; 

charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("UTF-8");
%>
<%
String seq=request.getParameter("c");
BookBoardDao dao=new BookBoardDao();
BookBoard b=dao.getBookBoard(seq);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; 

charset=UTF-8">
<link rel="stylesheet" href="../css/nstyle.css" />
<title>jsp</title>
</head>
<body>
<h2>Modify</h2>
<table class="twidth">
<colgroup>
<col width="15%" />
<col width="35%" />
<col width="15%" />
<col width="35%" />
</colgroup>
<caption>Modify</caption>
<tbody>
<tr>
<th class="left">글 번호</th>
<td><%=b.getSeq()%></td>
<th class="left">조회수</th>
<td><%=b.getHit() %></td>
</tr>
<tr>
<th class="left">아이디</th>
<td><%=b.getSid() %></td>
<th class="left">작성 시간</th>
<td><%=b.getRegdate() %></td>
</tr>
<tr>
<th class="left">제목</th>
<td colspan="3">
<input class="mod" name="title" value="<%=b.getTitle() %>" />
</td>
</tr>
<tr>
<th class="left">내용</th>
<td colspan="3" id="content">
<textarea class="txt" name="content"> <%=b.getContent() %>></textarea>
</td>
</tr>
<tr>
<th class="left">첨부파일</th>
<td colspan="3" id="addfile">
</td>
</tr>
</tbody>
</table>
<div>
<input type="hidden" name="c" value="<%=b.getSeq()%>" />
<input type="submit" value="저장" />
<a href="noticeDetail.jsp?c=<%=b.getSeq()%>">취소</a>
</div>
</body>
</html>