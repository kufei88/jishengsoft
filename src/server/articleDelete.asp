<!-- #include file="conn.asp" -->

<%
	ids = request("aids")
	state = request("state")
	
    set rsUser = server.CreateObject("adodb.recordset")
	if state <> "2" then
	  sql = "update news set state = '2' where news_id in ("&ids&")"
	else
	  sql = "delete from news  where news_id in ("&ids&")"
	end if
	  conn.execute(sql)
	
	  response.write "success"
	  
	
	
	
%>