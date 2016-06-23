<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<nav>
        	<ul>
            	<li class="m-1"><a href="about.jsp" target="_self">關於我們</a></li>
                <li class="m-2"><a href="contact.jsp" target="_self">聯絡我們</a></li>
                <li class="m-3"><a href="book.jsp" target="_self">查詢圖書</a></li>
                <li class="m-4"><a href="history.jsp" target="_self">歷史記錄</a></li>
                <li class="m-5"><a href="rent.jsp" target="_self">租書狀況</a></li>
                <li class="m-6"><a href="register.jsp" target="_self">會員註冊</a></li>
				<li class="m-7"><a href="login.jsp" target="_self">
				<%	if ( session.getAttribute ("member_name") != null) {%>
				會員修改
				<%} else {%>
				會員登入
				<%}%>
				</a></li>
				<%	if ( session.getAttribute ("member_name") != null) {%>
				<li class="m-8"><a href="logout.jsp" target="_self">會員登出</a></li>
				<%}%>
            </ul>
</nav>