
<%@ page import="uk.ac.shu.webarch.eregister.Class" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'class.label', default: 'Class')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-class" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-class" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="classDate" title="${message(code: 'class.classDate.label', default: 'Class Date')}" />
					
						<th><g:message code="class.classInstructor.label" default="Class Instructor" /></th>
					
						<g:sortableColumn property="className" title="${message(code: 'class.className.label', default: 'Class Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${classInstanceList}" status="i" var="classInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${classInstance.id}">${fieldValue(bean: classInstance, field: "classDate")}</g:link></td>
					
						<td>${fieldValue(bean: classInstance, field: "classInstructor")}</td>
					
						<td>${fieldValue(bean: classInstance, field: "className")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${classInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
