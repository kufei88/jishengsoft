<!-- #include file="conn.asp" -->

<%
	ids = request("ids")
	
    set rsUser = server.CreateObject("adodb.recordset")
	iSql = "select * from news where c_id in ("&ids&")"
	rsUser.Open iSql,conn,1,1
	  if rsUser.BOF and rsUser.EOF then
	  sql = "delete from category  where c_id in ("&ids&")"
	  conn.execute(sql)
	  response.write "success"
	  else 
	  response.write "error"
	  end if
	  	
%>