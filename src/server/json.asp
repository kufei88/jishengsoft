<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%Response.CodePage=65001%>
<%Response.Charset="utf-8"%>
<Script language="VBScript" runat="Server">
'===========================================================
'/ <Assembly>
'/    <Name>Json</Name>
'/     <Version>1.0.11.6</Version>
'/     <Classes>
'/         <Class value="simpleJson">
'/             <Description>操作简单json对象</Description>
'/         </Class>
'/     </Classes>
'/ </Assembly>
'===========================================================
    'json 的 string对象，内部类，用户不必自己操作
    CLASS jsonString
        PRIVATE p_str
        
        PUBLIC SUB Class_Initialize()
            p_str=""
        END SUB
    
        PUBLIC SUB Class_Terminate()
            p_str=NULL
        END SUB
        
        PUBLIC PROPERTY LET v(value)
            p_str=value
        END PROPERTY
        
        PUBLIC PROPERTY GET v
            v=p_str
        END PROPERTY
        
        PUBLIC FUNCTION parseString()
            IF isNull(p_str) THEN
                parseString="null"
            ELSE
				p_str = Replace(p_str,VBCrLf, "\n") 
				p_str = Replace(p_str,VBCr, "\n")
				p_str = Replace(p_str,VBLf, "\n")
				p_str = Replace(p_str,vbTab, "    ")
                parseString= """"+p_str+""""  
            END IF
        END FUNCTION
        
    END CLASS
    
    'json 的 Number对象，内部类，用户不必自己操作
    CLASS jsonNumber
        PRIVATE p_number
        
        PUBLIC SUB Class_Initialize()
            p_number=NULL
        END SUB
    
        PUBLIC SUB Class_Terminate()
            p_number=NULL
        END SUB
        
        PUBLIC PROPERTY LET v(value)
            p_number=value
        END PROPERTY
        
        PUBLIC PROPERTY GET v
            v=p_number
        END PROPERTY
        
        PUBLIC FUNCTION parseString()
            IF isNull(p_number) THEN
                parseString="null"
            ELSE
                parseString=Cstr(p_number)
            END IF
        END FUNCTION
    END CLASS
    
    'json 的 value对象，包括自动创建string对象，number对象，true，false，null
    CLASS jsonValue
        PRIVATE p_val
        
        PUBLIC SUB Class_Initialize()
            p_val=NULL
        END SUB
    
        PUBLIC SUB Class_Terminate()
            p_val=NULL
        END SUB
        
        '给value对象赋值，参数可以是string类型，number类型，boolean类型和null，除外，将全部转化为string类型
        PUBLIC PROPERTY LET v(value)
            DIM jStr,jNum
            IF varType(value)=vbBoolean OR varType(value)=vbNull THEN
                p_val=value
            ELSEIF varType(value)=vbString THEN
                SET jStr=NEW jsonString
                jStr.v=value
                SET p_val=jStr
                SET jStr=NOTHING
            ELSEIF isNumeric(value) THEN
                SET jNum=NEW jsonNumber
                jNum.v=value
                SET p_val=jNum
                SET jNum=NOTHING
            ELSE
                SET jStr=NEW jsonString
                jStr.v=Cstr(value)
                SET p_val=jStr
                SET jStr=NOTHING
            END IF
        END PROPERTY
        
        PUBLIC PROPERTY GET v
            IF isObject(p_val) THEN
                SET v=p_val
            ELSE
                v=p_val    
            END IF
        END PROPERTY
        
        '对象以合适的形式转换成字符串表示
        PUBLIC FUNCTION parseString()
            IF isNull(p_val) THEN
                parseString="null"
            ELSEIF varType(p_val)=vbBoolean THEN
                parseString=LCase(Cstr(p_val))
            ELSE
                parseString=p_val.parseString()
            END IF
        END FUNCTION
        
    END CLASS
    
    'json 的 array对象
    CLASS jsonArray
        PRIVATE p_array,p_length
        
        PUBLIC SUB Class_Initialize()
            p_array=Array()
            p_length=0
        END SUB
    
        PUBLIC SUB Class_Terminate()
            p_array=NULL
            p_length=0
        END SUB
        
        '动态设置数组长度
        PUBLIC PROPERTY LET length(value)
            IF value<0 THEN value=0
            p_length=value
            REDIM Preserve p_array(p_length)
        END PROPERTY
        
        '获得数组长度
        PUBLIC PROPERTY GET length()
            length=p_length
        END PROPERTY
        
        '设置索引为index的元素
        PUBLIC PROPERTY LET at(index,ByRef value)
            IF index>=0 OR index<p_length THEN
                SET p_array(index)=value
            END IF
        END PROPERTY        
        
        '获得索引为index的元素，如果index超出范围，返回null
        PUBLIC PROPERTY GET at(index)
            IF index<0 OR index>=p_length THEN
                at=NULL
            ELSE
                SET at=p_array(index)
            END IF
        END PROPERTY
    
        '添加value到数组末尾
        PUBLIC SUB push(ByRef value)
            p_length=p_length+1
            REDIM Preserve p_array(p_length)
            SET p_array(p_length-1)=value
        END SUB
        
        '获得数组末尾元素，并从数组中删除该元素
        PUBLIC FUNCTION pop()
            SET pop=p_array(p_length-1)
            p_length=p_length-1
            REDIM Preserve p_array(p_length)
        END FUNCTION
        
        '添加value到数组头部
        PUBLIC SUB unshift(ByRef value)
            DIM i,jVal
            p_length=p_length+1
            REDIM Preserve p_array(p_length)
            FOR i=p_length-1 TO 1 STEP -1
                SET p_array(i)=p_array(i-1)
            NEXT
            SET p_array(0)=value
        END SUB
        
        '获得数组头部元素，并从数组中删除该元素
        PUBLIC FUNCTION shift()
            DIM i
            SET shift=p_array(0)
            FOR i=0 TO p_length-2
                SET p_array(i)=p_array(i+1)
            NEXT
            p_length=p_length-1
            REDIM Preserve p_array(p_length)
        END FUNCTION
        
        '翻转数组
        PUBLIC SUB reverse()
            DIM i,temp
            FOR i=0 TO Cint((p_length-1)/2)
                SET temp=p_array(i)
                SET p_array(i)=p_array(p_length-1-i)
                SET p_array(p_length-1-i)=temp
                SET temp=NOTHING
            NEXT
        END SUB
        
        '对象以合适的形式转换成字符串表示
        PUBLIC FUNCTION parseString()
            DIM i,str,val
            str="[_VALUES]"
            FOR i=0 TO p_length-1
                val=p_array(i).parseString()
                str=Replace(str,"_VALUES",val+",_VALUES")
            NEXT
            str=Replace(str,",_VALUES","")
            str=Replace(str,"_VALUES","")
            parseString=str
        END FUNCTION
    END CLASS
    
    'json 的 object对象
    CLASS jsonObject
        PRIVATE p_member,p_value,p_length
    
        PUBLIC SUB Class_Initialize()
            p_member=Array()
            p_value=Array()
            p_length=0
        END SUB
    
        PUBLIC SUB Class_Terminate()
            p_member=NULL
            p_value=NULL
            p_length=0
        END SUB
        
        '检查是否包含指定member，返回该member的顺序索引号，没有返回-1
        PRIVATE FUNCTION include(member)
            DIM i
            FOR i=p_length-1 TO 0 STEP -1
                IF p_member(i)=member THEN EXIT FOR
            NEXT
            include=i
        END FUNCTION
        
        '设置member的value对象
        PUBLIC PROPERTY SET member(mem,ByRef value)
            DIM index,length
            index=include(mem)
            IF index=-1 THEN
                p_length=p_length+1
                REDIM Preserve p_member(p_length)
                REDIM Preserve p_value(p_length)
                p_member(p_length-1)=mem
                SET p_value(p_length-1)=value
            ELSE
                SET p_value(index)=value
            END IF
        END PROPERTY
        
        '获得member的value对象
        PUBLIC PROPERTY GET member(mem)
            DIM index
            index=include(mem)
            IF index=-1 THEN
                member=NULL
            ELSE
                SET member=p_value(index)
            END IF
        END PROPERTY
        
        '对象以合适的形式转换成字符串表示
        PUBLIC FUNCTION parseString()
            DIM str,i,mem,val
            str="{_MEMBERS}"
            FOR i=0 TO p_length-1
                mem=p_member(i)
                val=p_value(i).parseString()
                str=Replace(str,"_MEMBERS",""""+mem+""":"+val+",_MEMBERS")
            NEXT
            str=Replace(str,",_MEMBERS","")
            parseString=str
        END FUNCTION
    
    END CLASS
    
    '操作简单json for asp的类
    CLASS simpleJson
        PUBLIC SUB Class_Initialize()
        END SUB
    
        PUBLIC SUB Class_Terminate()
        END SUB
        
        '获得 json的object对象新实例
        PUBLIC FUNCTION nO()
            SET nO=NEW jsonObject
        END FUNCTION
        
        '获得 json的array对象新实例
        PUBLIC FUNCTION nA()
            SET nA=NEW jsonArray
        END FUNCTION
        
        '获得 json的value对象新实例
        PUBLIC FUNCTION nV(value)
            DIM jVal
            SET jVal=NEW jsonValue
            jVal.v=value
            SET nV=jVal
        END FUNCTION
        
        '绑定数据数据，转换成简单json对象，第一个参数为recordSet对象实例，第二参数为分页大小，不分页设置为null，第三个参数为页号，不分页设置为null
        PUBLIC FUNCTION DataBind(rs,rowCount)
            DIM pageCount,recordCount,field
            DIM jObj,jObj_infos,jArr_rows,jObj_row
            
  
            
            IF NOT isNull(rs) AND NOT isEmpty(rs) THEN
      
                recordCount=rowCount
                SET jObj=nO()

                SET jObj.member("total")=nV(recordCount)
                SET jObj_infos=NOTHING
                SET jArr_rows=nA()
                DO UNTIL rs.eof
                    SET jObj_row=nO()
                    FOR EACH field IN rs.fields
                        SET jObj_row.member(field.name)=nV(field.value)
                    NEXT
                    jArr_rows.push(jObj_row)
                    rs.moveNext()
                LOOP
                SET jObj.member("rows")=jArr_rows
                SET jArr_rows=NOTHING
                SET DataBind=jObj
                
            ELSE
                DataBind=NULL
            END IF
        END FUNCTION
		
		public function MyDataBind(rs)
			IF NOT isNull(rs) AND NOT isEmpty(rs) THEN
      
                recordCount=rowCount
                SET jObj=nO()

                
                SET jArr_rows=nA()
                DO UNTIL rs.eof
                    SET jObj_row=nO()
                    FOR EACH field IN rs.fields
                        SET jObj_row.member(field.name)=nV(field.value)
                    NEXT
                    jArr_rows.push(jObj_row)
                    rs.moveNext()
                LOOP
                
                
                SET MyDataBind=jArr_rows
                
            ELSE
                MyDataBind=NULL
            END IF
		end function
		
		PUBLIC FUNCTION DataBind2(rs,rowCount,fieldname)
            DIM pageCount,recordCount,field
            DIM jObj,jObj_infos,jArr_rows,jObj_row,jArr_rows1
            dim temp1
  		 	temp1=0
            
            IF NOT isNull(rs) AND NOT isEmpty(rs) THEN
      
                recordCount=rowCount
                SET jObj=nO()

                SET jObj.member("total")=nV(recordCount)
                SET jObj_infos=NOTHING
                SET jArr_rows=nA()
                DO UNTIL rs.eof
					temp1 = temp1 + rs(fieldname)
                    SET jObj_row=nO()
                    FOR EACH field IN rs.fields
                        SET jObj_row.member(field.name)=nV(field.value)
                    NEXT
                    jArr_rows.push(jObj_row)
                    rs.moveNext()
                LOOP
                SET jObj.member("rows")=jArr_rows
                SET jArr_rows=NOTHING
				SET jArr_rows1=nA()
				SET jObj_row=nO()
				
				Set jObj_row.member(fieldname) = nV(temp1)
				set JObj_row.member("productid") = nV("Total:")
				jArr_rows1.push(jObj_row)
				SET jObj.member("footer")=jArr_rows1
				Set jArr_rows1=NOTHING
                SET DataBind2=jObj
            ELSE
                DataBind2=NULL
            END IF
        END FUNCTION
		
		PUBLIC FUNCTION DataBind3(rs,rowCount,fieldname,fieldname1)
            DIM pageCount,recordCount,field
            DIM jObj,jObj_infos,jArr_rows,jObj_row,jArr_rows1
            dim temp1
  		 	temp1=0
			temp2=0
            
            IF NOT isNull(rs) AND NOT isEmpty(rs) THEN
      
                recordCount=rowCount
                SET jObj=nO()

                SET jObj.member("total")=nV(recordCount)
                SET jObj_infos=NOTHING
                SET jArr_rows=nA()
                DO UNTIL rs.eof
					temp1 = temp1 + rs(fieldname)
					temp2 = temp2 + rs(fieldname1)
                    SET jObj_row=nO()
                    FOR EACH field IN rs.fields
                        SET jObj_row.member(field.name)=nV(field.value)
                    NEXT
                    jArr_rows.push(jObj_row)
                    rs.moveNext()
                LOOP
                SET jObj.member("rows")=jArr_rows
                SET jArr_rows=NOTHING
				SET jArr_rows1=nA()
				SET jObj_row=nO()
				
				Set jObj_row.member(fieldname) = nV(temp1)
				Set JObj_row.member(fieldname1) = nV(temp2)
				set JObj_row.member("productid") = nV("Total:")
				jArr_rows1.push(jObj_row)
				SET jObj.member("footer")=jArr_rows1
				Set jArr_rows1=NOTHING
                SET DataBind3=jObj
            ELSE
                DataBind3=NULL
            END IF
        END FUNCTION
		
		PUBLIC FUNCTION getObject()
				DIM jObj
                SET jObj=nO()
				SET jObj.member("rows")=nV(10)
                
                SET getObject=jObj
            
        END FUNCTION
    END CLASS
    
</Script>