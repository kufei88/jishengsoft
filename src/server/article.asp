<!-- #include file="json.asp" -->
<!-- #include file="conn.asp" -->
<%
	dim title,createtime
	set rsUser = server.CreateObject("adodb.recordset")
	sql = "select top 2 title,createTime,news_id from news where state = 1 order by createTime desc"
	rsUser.Open sql,conn,0,1
	SET jObj=NEW simpleJson
	SET r=jObj.DataBind(rsUser,2)
	Response.Write r.parseString()
%>