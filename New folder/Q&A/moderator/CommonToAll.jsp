<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,p2.DBInfo" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ask Me Anything</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--<style type="text/css">
<!--
.style4 {font-size: 18px}
body {
	background-color: #FFFFCC;
}

a:link {
    color: red;
}

/* visited link */
a:visited {
    color: green;
}

/* mouse over link */
a:hover {
    color: hotpink;
}

/* selected link */
a:active {
    color: blue;
}
</style>-->
</head>

<body class="w3-theme-l5">

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href=CommonToAll.jsp?Moderator class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>Q&A</a>
  <a href= CommonToAll.jsp?ViewAllPost class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="View All Posts"><i class="fa fa-globe"></i></a>
  <a href=CommonToAll.jsp?ViewSelfPost class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="View Self Posts" hspace="10px" vspace="20px"><i class="fa fa-user"></i></a>  
 
  <div class="w3-dropdown-hover w3-right">
      <img src="../Images/avatar2.png" class="w3-circle" style="height:23px;width:23px" alt="Avatar" hspace="10px" vspace="15px">
	<div class= "w3-dropdown-content w3-bar-block w3-border" style="right:0">
      <a href="../user/Logout.jsp" class="w3-bar-item w3-button" >Logout</a>
	  </div>
  </div>
 </div>
</div>
</div>

<%
if((String)session.getAttribute("utype1")!=null)
{
%>
<div align="center">
   <table width="100%" height="100%" >
    <tr>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td width="25%" height="339" valign="top"><%@ include file="sideMenu.html"%>&nbsp;</td>
	  <%
	  		if(request.getParameter("NewPost")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="../user/UNewPost.jsp"%>&nbsp;</td>
			<%
			}
	  %>
	  
	  <%
	  		if(request.getParameter("ViewAllPost")!=null)
			{
			request.getParameter("pgid");
			%>
			<input type="hidden" id="pgid" name="pgid"/>
				 <td width="285" height="339" valign="top"><%@ include file="../user/UViewAllPost.jsp"%>&nbsp;</td>
			<%
			}
	  %>
	  
	  <%
	  		if(request.getParameter("ArticlePosted")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="../user/UArticlePosted.jsp"%>&nbsp;</td>
			<%
			}
	  %>
	  
	  
	  
	  <%
	  		if(request.getParameter("ArticleIdUpdt")!=null)
			{	
			%>
				 <td width="285" height="339" valign="top"><%@ include file="../user/SearchDoneForUpdation.jsp"%>&nbsp;</td>
			<%
				}
				
	  %>
	  
	   <%
	  		if(request.getParameter("ArticleIdDlt")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="../user/SearchDoneForDeletiontry.jsp"%>&nbsp;</td>
			<%
			}
	  %>

	  <%
	  		if(request.getParameter("ViewSelfPost")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="../user/UViewSelfPost.jsp"%>&nbsp;</td>
			<%
			}
	  %>
	  
	   <%
	  		if(request.getParameter("ChangePass")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="../user/PassChange.jsp"%>&nbsp;</td>
			<%
			}
			
	  %>
	  
	  
	   <%
	   //-----------------------------------------------------------Moderator----------------------------------------------------------
	   
	   
	   
	  		if(request.getParameter("Moderator")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="ViewAllArtiRecords.jsp"%></td>
			<%
			}
			
	  %>
	  
	  <%
	  
	  		if(request.getParameter("NewAcc")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="../GeneralRegistration.jsp"%>&nbsp;</td>
			<%
			}
			
	  %>
	  <%
	  		
	  		if(request.getParameter("aprv")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="ViewAllArtiRecords.jsp"%>&nbsp;</td>
			<%
			}
			
	  %>
	   <%
	  		
	  		if(request.getParameter("reject")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="ViewAllArtiRecords.jsp"%>&nbsp;</td>
			<%
			}
			
	  %>
	  <%
	  		
	  		if(request.getParameter("rejected")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="ViewAllRejectedArtiRecords.jsp"%>&nbsp;</td>
			<%
			}
			
	  %>
	   <%
	  		
	  		if(request.getParameter("Srch")!=null)
			{
			%>
				 <td width="285" height="339" valign="top"><%@ include file="../user/SearchCommontry.jsp"%>&nbsp;</td>
			<%
			}
			
	  %>
	  <%
	  		String str=request.getParameter("AID");
			
	  		if(str!=null)
			{
			session.setAttribute("AID",str);
			%>
	  <td width="102" height="339" valign="top"><%@ include file="../user/ViewPosttry.jsp"%>&nbsp;</td>
			<%
			}
		
	  %>
	   <%
	  		if(request.getParameter("Norcrds")!=null)
			{
			
			%>
	  			<td width="102" height="339" valign="top">No Records....!</td>
			<%
			}
		
	  %>
	  <%
	  		if(request.getParameter("norcrds")!=null)
			{
			%>
	  			<td valign="top">No Record Found...!!</td>
			<%
			}
		
	 	 %>
	  	 <%
	  		if(request.getParameter("ViewPostId")!=null)
			{
			
				String str1;
				if((String)session.getAttribute("id")!=null)
				{
				session.removeAttribute("id");
				str1=request.getParameter("ViewPostId");
				}
				else
				{
				str1=(String)session.getAttribute("ViewPostId");
				}
				session.setAttribute("ViewPostId",str1);
				
				//String a=(String)session.getAttribute("ViewPostIdQLike1");
				//System.out.println("CTA"+a);
				if(str1!=null)
				{
				
				session.setAttribute("AID",str1);
				//session.removeAttribute("ViewPostIdQLike1");
				}
				//else
				//session.setAttribute("AID",a);
				session.removeAttribute("cmnsrch");
			%>
			  <td width="92" height="100%" valign="top"><%@ include file="../user/ViewPosttry.jsp"%>&nbsp;</td>
			<%
			
			}
	 		 %>
	  
	  
	  
      
    </tr>
    <tr>
      <td colspan="3"><%@ include file="../Footer.html"%>&nbsp;</td>
    </tr>
  </table>
</div>
<%
}
else
{
response.sendRedirect("../Index.jsp?login");
}
%>
</body>
</html>
