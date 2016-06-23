<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="teachDB.DbBean" %>
<%@ page import="StringFormat.pattern" %>
<%!
 private String  getTitle(String title){
 		String shortString = "";
       		if(title.length() > 20)
       			shortString = title.substring(0,20)+"...";
       		else
       			shortString = title;
       		return 	shortString;
        }
%>
<%
	DbBean db = new DbBean();
	List showNews = db.SelectRS("select * from newslist where deleteflag = 0 order by n_order ");
	String[] NewsAll;
	String[] NewsArray;
	String[] NewsIdx;
	if(showNews.size() > 6 ){
		NewsAll = new String[6];
		NewsArray = new String[6];
		NewsIdx = new String[6];
	}else{
		NewsAll = new String[showNews.size()];
		NewsArray = new String[showNews.size()];
		NewsIdx = new String[showNews.size()];
		}
	for(int i=0;i<NewsArray.length;i++){
		Map map = (Map) showNews.get(i);
			NewsAll[i] =(String) map.get( "n_title");
			NewsArray[i] =getTitle((String) map.get( "n_title"));
			NewsIdx[i] = String.valueOf((Integer)map.get( "n_id"));	
	}
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>看啥租啥租書店</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div id="container">
        <header>
        	<div class="logo"> 
            <div class="company" style="color:blue;"><img src="logo.jpg" style="width:45px;height:40px;">  看啥租啥租書店</div>
        </header>
      <%@ include file = "/_include/menu.jsp"%>
        <article>
        <aside class="aside-left-1">
            <div class="news-img">
                <img src="book.jpg" width="252" height="260" border="0">
            </div>
            <div class="news-content">
                <div class="title-1">
                	<a href="news_list.jsp?page=1" target="_self" >最新消息</a>
                </div>
                <ul class="news-list first">
                <%for(int i=0;i<NewsArray.length;i++){%>
                    <li class="list-a"><span class="list-style-1"></span><a href="news_content.jsp?id=<%=NewsIdx[i]%>" target="_self" title="<%=NewsAll[i]%>"><%=NewsArray[i]%></a></li>
                <%}%>
                </ul>
            </div>
        </aside>
        
        </article>
        <footer></footer>
    </div>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.backgroundPosition.js"></script>
<script src="js/cs.js"></script>
<script>
(function(){
	
	$(window).resize(function() {
		$('article').css({height:$(window).height()-($('header').height()+$('nav').height()+$('#slider').height()+$('footer').height()+120)});
	}).trigger('resize');
		
})();
</script>
</body>
</html>
