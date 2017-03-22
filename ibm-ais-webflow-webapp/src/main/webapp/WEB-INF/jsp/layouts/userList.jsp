<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="dj_gecko dj_contentbox" lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<tiles:insertAttribute name="ibm-head"/>
	</head>
	<body id="ibm-com" class="v17" aria-busy="false">
		<div class="ibm-landing-page" id="ibm-top">
			<img width="43" height="15" alt="IBM Print" id="ibm-print-masthead" src="//1.www.s81c.com/i/v17/t/ibm_logo_print.png">
			<tiles:insertAttribute name="ibm-masthead"/>
			<tiles:insertAttribute name="viewContent"/>
			<tiles:insertAttribute name="ibm-footer"/>
		</div>
		<tiles:insertAttribute name="ibm-metrics"/>
	</body>
</html>