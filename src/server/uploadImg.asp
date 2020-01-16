
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
'禁止缓存'
Response.CacheControl="no-cache"  
Response.Expires=-1
Response.Charset="UTF-8"    '配合第一行设定网页编码

if Request.TotalBytes then	'如果上传文件非空'
	set read_stream=createobject("adodb.stream")	'设置一个流'
	read_stream.Type=1	'这个流读二进制数据，如果Type=2则读文本数据'
	read_stream.Open	'打开流'
	read_stream.write Request.BinaryRead(Request.TotalBytes)	'将表单传过来的二进制数据写入流read_stream'
	'将流read_stream的所有数据读到binary_stream中，binary_stream相当于一个临时变量，接下来将对binary_stream进行切割，以免污染read_stream中的原数据'
	read_stream.Position=0
	binary_stream=read_stream.Read

	enter=chrB(13)&chrB(10) '二进制流中的回车'  
    first_enter=clng(instrb(binary_stream,enter))   '寻找第一个回车的位置'  
    second_enter=instrb(first_enter+1,binary_stream,enter)  '寻找第二个回车的位置'  
	
	set write_stream=createobject("adodb.stream")   '定义一个流write_stream'  
    write_stream.type=1 'write_stream是处理二进制数据的'  
    write_stream.open  
    '将read_stream中文件信息部分写到write_stream'  
    read_stream.Position=first_enter+1  
    read_stream.copyto write_stream,second_enter-first_enter-3
	
	write_stream.Position=0  
    write_stream.type=2 '再将write_stream转为文本流'  
    write_stream.CharSet="UTF-8"  
    file_info=write_stream.readtext '写到file_info这个字符串'  
    write_stream.Close  '暂且关闭write_stream这个流，接下来对file_info这个字符串进行切割'
	
	file_name=mid(file_info,instrRev(file_info,"\")+1)  '取得全文件名'  
    file_pre_suffix=left(file_name,instrRev(file_name,".")-1)   '取得文件前缀'  
    suffix=mid(file_name,instrRev(file_name,"."))   '取得文件后缀，带.的'
	
	server_file_name=file_pre_suffix&"_"&datediff("s","1970-01-01 00:00:00",now)&suffix '在服务器保存的文件名就是“原文件前缀_时间戳.原文件后缀名”'
	
	delimiter=leftB(binary_stream,clng(instrb(binary_stream,enter))-1)  '取得-----------------7e010b37206c4这个文件分隔符，用于给字符串处理函数找到文件内容'  
    third_enter=instrb(second_enter+1,binary_stream,enter)  '找第三个回车的位置'  
    file_begin_position=clng(instrb(third_enter+1,binary_stream,enter))+1   '获取文件内容第一个字符之前的位置'  
    file_end_position=clng(instrb(lenb(delimiter),binary_stream,delimiter))-3  '获取文件内容中最后一个字符的位置，就是第二个分隔符"delimiter"开始的前一个二进制字符' 
	
	write_stream.type=1 'write_stream是处理二进制数据'  
    write_stream.open  
    read_stream.Position=file_begin_position    '将流read_stream的开始位置移到文件开始的位置'  
    read_stream.copyto write_stream,file_end_position-file_begin_position   '把流read_stream的开始位置之后 长为 文件长度 的内容复制到write_stream，其中文件长度就是文件结束的位置file_end_position-文件开始的位置file_begin_position'  
    name = replace(server_file_name,"Content-Disposition: form-data; name=""image""; filename=""","") '去除请求头的文件名'
	FileName = Server.MapPath("img/"&name&"/")
    write_stream.SaveToFile FileName,2
	
	
	'人走带门，关闭所有用到的流'   
    write_stream.Close  
    Set write_stream=nothing  
    read_stream.Close  
    Set read_stream=nothing
	
	'打印文件信息到网页'
	'response.write "你上传的文件是："&file_name&"<br>"
	'response.write "你上传文件的后缀为："&suffix&"<br>"
	url="http://"&Request.ServerVariables("HTTP_HOST")&"/asp/img/"&name
	'response.write "访问地址：<a href='"&url&"' target='_blank'>"&url&"</a><br>"
	response.write ""&url&""
	
end if
%>