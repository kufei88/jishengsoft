<!-- #include file="json.asp" -->
<!-- #include file="conn.asp" -->
<%
	dim keywords
	state = request("state")
	keywords = request("keywords")
	rows = request("count")
	page = request("page")
	set rsUser = server.CreateObject("adodb.recordset")
	if state <> "-1" then
	str = "and state ='"&state&"'"
	end if
	sql = "select top "&rows&" title,createTime,news_id,state from news where title like '%"&keywords&_
	"%' and news_id not in (select top "&(page-1)*rows&" news_id from news where title like '%"&keywords&"%'"&str&" order by createTime desc)"&str&" order by createTime desc"
	sqlcount = "select count(*) from news where title like '%"&keywords&"%'"&str
	set rs1=conn.execute(sqlcount)
	rowCount=rs1(0)
	
	rsUser.Open sql,conn,0,1
	SET jObj=NEW simpleJson
	SET r=jObj.DataBind(rsUser,rowCount)
	Response.Write r.parseString()
%>