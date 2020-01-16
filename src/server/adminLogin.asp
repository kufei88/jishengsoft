<!-- #include file="conn.asp" -->

<%
	uname = request("username")
	upwd = request("password")
	
    set rsUser = server.CreateObject("adodb.recordset")
	  sql = "select * from users where uname = '"&uname&"' and upwd = '"&upwd&"'"
	  rsUser.Open sql,conn,1,1
	  if rsUser.BOF and rsUser.EOF then
		  response.write "error"
		  response.end
		else
		  response.write "success"
		end if	  
	
	
	
%>