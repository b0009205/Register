
<%@ page import="uk.ac.shu.webarch.eregister.Enrollment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-enrollment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list enrollment">
			
				<g:if test="${enrollmentInstance?.classEnrollment}">
				<li class="fieldcontain">
					<span id="classEnrollment-label" class="property-label"><g:message code="enrollment.classEnrollment.label" default="Class Enrollment" /></span>
					
						<span class="property-value" aria-labelledby="classEnrollment-label"><g:link controller="class" action="show" id="${enrollmentInstance?.classEnrollment?.id}">${enrollmentInstance?.classEnrollment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.enrollmentDate}">
				<li class="fieldcontain">
					<span id="enrollmentDate-label" class="property-label"><g:message code="enrollment.enrollmentDate.label" default="Enrollment Date" /></span>
					
						<span class="property-value" aria-labelledby="enrollmentDate-label"><g:formatDate date="${enrollmentInstance?.enrollmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.enrollmentName}">
				<li class="fieldcontain">
					<span id="enrollmentName-label" class="property-label"><g:message code="enrollment.enrollmentName.label" default="Enrollment Name" /></span>
					
						<span class="property-value" aria-labelledby="enrollmentName-label"><g:fieldValue bean="${enrollmentInstance}" field="enrollmentName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.studentEnrollment}">
				<li class="fieldcontain">
					<span id="studentEnrollment-label" class="property-label"><g:message code="enrollment.studentEnrollment.label" default="Student Enrollment" /></span>
					
						<span class="property-value" aria-labelledby="studentEnrollment-label"><g:link controller="student" action="show" id="${enrollmentInstance?.studentEnrollment?.id}">${enrollmentInstance?.studentEnrollment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${enrollmentInstance?.id}" />
					<g:link class="edit" action="edit" id="${enrollmentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
