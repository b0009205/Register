
<%@ page import="uk.ac.shu.webarch.eregister.Instructorgrails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instructorgrails.label', default: 'Instructorgrails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-instructorgrails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-instructorgrails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list instructorgrails">
			
				<g:if test="${instructorgrailsInstance?.classesTaught}">
				<li class="fieldcontain">
					<span id="classesTaught-label" class="property-label"><g:message code="instructorgrails.classesTaught.label" default="Classes Taught" /></span>
					
						<g:each in="${instructorgrailsInstance.classesTaught}" var="c">
						<span class="property-value" aria-labelledby="classesTaught-label"><g:link controller="class" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${instructorgrailsInstance?.instructorName}">
				<li class="fieldcontain">
					<span id="instructorName-label" class="property-label"><g:message code="instructorgrails.instructorName.label" default="Instructor Name" /></span>
					
						<span class="property-value" aria-labelledby="instructorName-label"><g:fieldValue bean="${instructorgrailsInstance}" field="instructorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorgrailsInstance?.instructorRoom}">
				<li class="fieldcontain">
					<span id="instructorRoom-label" class="property-label"><g:message code="instructorgrails.instructorRoom.label" default="Instructor Room" /></span>
					
						<span class="property-value" aria-labelledby="instructorRoom-label"><g:fieldValue bean="${instructorgrailsInstance}" field="instructorRoom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorgrailsInstance?.instructorTelephone}">
				<li class="fieldcontain">
					<span id="instructorTelephone-label" class="property-label"><g:message code="instructorgrails.instructorTelephone.label" default="Instructor Telephone" /></span>
					
						<span class="property-value" aria-labelledby="instructorTelephone-label"><g:fieldValue bean="${instructorgrailsInstance}" field="instructorTelephone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${instructorgrailsInstance?.id}" />
					<g:link class="edit" action="edit" id="${instructorgrailsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
