<!-- #include file="json.asp" -->
<!-- #include file="conn.asp" -->
<%
	dim id
	id = request("id")
	set rsUser = server.CreateObject("adodb.recordset")
	sql = "select * from news where news_id = '"&id&"'"
	sqlcount = "select count(*) from news where news_id = '"&id&"'"
	set rs1=conn.execute(sqlcount)
	rowCount=rs1(0)
	rsUser.Open sql,conn,0,1
	SET jObj=NEW simpleJson
	SET r=jObj.DataBind(rsUser,rowCount)
	Response.Write r.parseString()
%>