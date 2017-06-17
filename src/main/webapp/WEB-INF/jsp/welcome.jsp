<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<script>
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
function btntest_onclick() 
{
	document.getElementById("loader").style.display = "block";
	 
	myVar = setTimeout(showPage, 4000);
	
    
}
function showPage() {
	document.getElementById("loader").style.display = "none";
	  window.location.href = "/optimalroute";
	}	
</script>
<body>
<%@ include file = "header.jsp" %>
	<div id="loader"></div>
	<div class="container">
		<div class="starter-template">
			<h2>Optiminal Route</h2>
			<h2>Depot</h2>
		</div>
		<div>
			<span style="font-size: large;">Loc-Latitude:</span><span class="span-alignment"> 23.4312446</span>
		</div>
		<div>
			<span style="font-size: large;">Loc-Longitude:</span><span class="span-alignment"> 76.5466449</span>
		</div>
	<section>		
		<div class="tbl-header">
    	<TABLE cellpadding="0" cellspacing="0" border="0">
    	<thead>
				<TR>
					<TH>CustomerID</TH>
					<TH>Latitude</TH>
					<TH>Longitude</TH>
					<TH>CustomerDemand</TH>
				</TR>
      	</thead>
    	</table>
		</div>
		<div class="tbl-content">
	    <table cellpadding="0" cellspacing="0" border="0">
	      <tbody>
				<TR>
					<TD>1</td>
					<TD>18.641400</TD>
					<TD>72.872200</TD>
					<TD>20</TD>
				</TR>
				<TR>
					<TD>2</td>
					<TD>18.964700</TD>
					<TD>72.825800</TD>
					<TD>20</TD>
				</TR>
				<TR>
					<TD>3</td>
					<TD>18.523600</TD>
					<TD>73.847800</TD>
					<TD>20</TD>
				</TR>
				<TR>
					<TD>4</td>
					<TD>23.0204978</TD>
					<TD>72.4396531</TD>
					<TD>20</TD>
				</TR>
			</tbody>
	    </table>
	  </div>
	 </section>
	 <!-- <div><a href="/optimalroute">Find Optimal Route</a></div> -->
	 <input id="btntest" type="button" value="Find Optimial Route" 
       onclick="btntest_onclick()" />

	<!-- /.container -->

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
