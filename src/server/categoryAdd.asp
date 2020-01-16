<!-- #include file="conn.asp" -->

<%
	id = request("id")
	cateName = request("cateName")
    set rsUser = server.CreateObject("adodb.recordset")
	if id <> "" then
	  sql = "update category set cateName = '"&cateName&"' where c_id = '"&id&"'"
	else
	  sql = "insert into  category (cateName) values ('"&cateName&"')"
	end if
	  conn.execute(sql)
	
	  response.write "success"
	  
%>