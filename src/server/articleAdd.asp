<!-- #include file="conn.asp" -->

<%
	id = request("id")
	title = request("title")
	mdContent = request("mdContent")
	content = request("content")
	state = request("state")
	c_id = request("c_id")
	createTime = now()
	
	
    set rsUser = server.CreateObject("adodb.recordset")
	if id <> "-1" then
	  sql = "update news set title = '"&title&"', mdContent = '"&mdContent&"', content = '"&content&"', state = '"&state&"',c_id = '"&c_id&"' where news_id = '"&id&"'"
	else
	  sql = "insert into  news (title,createTime,content,mdContent,state,c_id) values ('"&title&"','"&createTime&"','"&content&"','"&mdContent&"','"&state&"','"&c_id&"')"
	end if
	  conn.execute(sql)
	
	  response.write "success"
	  
	
	
	
%>