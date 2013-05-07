
<%@ page import="uk.ac.shu.webarch.eregister.Class" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'class.label', default: 'Class')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-class" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-class" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list class">
			
				<g:if test="${classInstance?.classDate}">
				<li class="fieldcontain">
					<span id="classDate-label" class="property-label"><g:message code="class.classDate.label" default="Class Date" /></span>
					
						<span class="property-value" aria-labelledby="classDate-label"><g:formatDate date="${classInstance?.classDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.classInstructor}">
				<li class="fieldcontain">
					<span id="classInstructor-label" class="property-label"><g:message code="class.classInstructor.label" default="Class Instructor" /></span>
					
						<span class="property-value" aria-labelledby="classInstructor-label"><g:link controller="instructor" action="show" id="${classInstance?.classInstructor?.id}">${classInstance?.classInstructor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.className}">
				<li class="fieldcontain">
					<span id="className-label" class="property-label"><g:message code="class.className.label" default="Class Name" /></span>
					
						<span class="property-value" aria-labelledby="className-label"><g:fieldValue bean="${classInstance}" field="className"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.classesEnrolled}">
				<li class="fieldcontain">
					<span id="classesEnrolled-label" class="property-label"><g:message code="class.classesEnrolled.label" default="Classes Enrolled" /></span>
					
						<g:each in="${classInstance.classesEnrolled}" var="c">
						<span class="property-value" aria-labelledby="classesEnrolled-label"><g:link controller="enrollment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.courseClass}">
				<li class="fieldcontain">
					<span id="courseClass-label" class="property-label"><g:message code="class.courseClass.label" default="Course Class" /></span>
					
						<span class="property-value" aria-labelledby="courseClass-label"><g:link controller="course" action="show" id="${classInstance?.courseClass?.id}">${classInstance?.courseClass?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.registrationSheets}">
				<li class="fieldcontain">
					<span id="registrationSheets-label" class="property-label"><g:message code="class.registrationSheets.label" default="Registration Sheets" /></span>
					
						<g:each in="${classInstance.registrationSheets}" var="r">
						<span class="property-value" aria-labelledby="registrationSheets-label"><g:link controller="registrationSheet" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${classInstance?.id}" />
					<g:link class="edit" action="edit" id="${classInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
