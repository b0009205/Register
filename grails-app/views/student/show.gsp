
<%@ page import="uk.ac.shu.webarch.eregister.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.studentCourse}">
				<li class="fieldcontain">
					<span id="studentCourse-label" class="property-label"><g:message code="student.studentCourse.label" default="Student Course" /></span>
					
						<span class="property-value" aria-labelledby="studentCourse-label"><g:fieldValue bean="${studentInstance}" field="studentCourse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="student.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${studentInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.studentName}">
				<li class="fieldcontain">
					<span id="studentName-label" class="property-label"><g:message code="student.studentName.label" default="Student Name" /></span>
					
						<span class="property-value" aria-labelledby="studentName-label"><g:fieldValue bean="${studentInstance}" field="studentName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.studentRegister}">
				<li class="fieldcontain">
					<span id="studentRegister-label" class="property-label"><g:message code="student.studentRegister.label" default="Student Register" /></span>
					
						<span class="property-value" aria-labelledby="studentRegister-label"><g:link controller="registerEntry" action="show" id="${studentInstance?.studentRegister?.id}">${studentInstance?.studentRegister?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.studentYear}">
				<li class="fieldcontain">
					<span id="studentYear-label" class="property-label"><g:message code="student.studentYear.label" default="Student Year" /></span>
					
						<span class="property-value" aria-labelledby="studentYear-label"><g:fieldValue bean="${studentInstance}" field="studentYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.studentsEnrolled}">
				<li class="fieldcontain">
					<span id="studentsEnrolled-label" class="property-label"><g:message code="student.studentsEnrolled.label" default="Students Enrolled" /></span>
					
						<g:each in="${studentInstance.studentsEnrolled}" var="s">
						<span class="property-value" aria-labelledby="studentsEnrolled-label"><g:link controller="enrollment" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${studentInstance?.id}" />
					<g:link class="edit" action="edit" id="${studentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
