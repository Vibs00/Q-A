<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,p2.DBInfo" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
</head>
<%
	
	String aid=(String)request.getParameter("ArticleIdUpdt");
	//System.out.print(aid);
	Connection con= DBInfo.con;
	String query="select * from article where articleid=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,aid);
	ResultSet res=ps.executeQuery();
	int flag=0;
	String subject="",article="",postedby="";
	
	java.util.Date d=new java.util.Date();
	
	
	while(res.next())
						{
							postedby=res.getString(1);
							subject=res.getString(3);
							article=res.getString(4);
							flag=1;
							break;
						
						}		
	
	if(flag!=0)
	{
%>
<body>
<%
if((String)session.getAttribute("utype1")=="User")
{
%>
<form action="UpdationDone.jsp" method="post">
<%
}
%>
<%
if((String)session.getAttribute("utype1")!="User")
{
%>
<form action="../user/UpdationDone.jsp" method="post">
<%
}
%>
<table width="100%" height="100%" border="1">
  <tr>
    <td colspan="2"><div align="center">Update Post </div></td>
  </tr>
    <input name="textfield1" type="hidden" value="<%=postedby%>"id="textfield1" readonly="true" />
    <input name="textfield2" type="hidden" value="<%=aid%>" id="textfield2" readonly="true" />
   
  <tr>
    <td><div align="center">Question</div></td>
    <td><textarea name="textarea2" cols="100%" rows="3"><%=subject%></textarea></td>
  </tr>
  <tr>
    <td><div align="center">
      <p>Description</p>
      </div></td>
    <td><label>
    <textarea name="textarea" cols="100%" rows="8"><%=article%></textarea>
    </label></td>
  </tr>
  
  
  
  <tr>
    <td colspan="2">
      <div align="center">
        <input type="submit" value="Update" />
      </div>      </td>
  </tr>
</table>
</form>
<%
		}
		else
		{
	%>
			


			<h1><font color=red>Searching Failed....!!</font></h1>
	<%
	}
	%>
</body>
</html>
