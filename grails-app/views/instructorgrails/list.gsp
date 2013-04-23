
<%@ page import="uk.ac.shu.webarch.eregister.Instructorgrails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instructorgrails.label', default: 'Instructorgrails')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-instructorgrails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-instructorgrails" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="instructorName" title="${message(code: 'instructorgrails.instructorName.label', default: 'Instructor Name')}" />
					
						<g:sortableColumn property="instructorRoom" title="${message(code: 'instructorgrails.instructorRoom.label', default: 'Instructor Room')}" />
					
						<g:sortableColumn property="instructorTelephone" title="${message(code: 'instructorgrails.instructorTelephone.label', default: 'Instructor Telephone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${instructorgrailsInstanceList}" status="i" var="instructorgrailsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${instructorgrailsInstance.id}">${fieldValue(bean: instructorgrailsInstance, field: "instructorName")}</g:link></td>
					
						<td>${fieldValue(bean: instructorgrailsInstance, field: "instructorRoom")}</td>
					
						<td>${fieldValue(bean: instructorgrailsInstance, field: "instructorTelephone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${instructorgrailsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
