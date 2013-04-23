
<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationSheet.label', default: 'RegistrationSheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registrationSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registrationSheet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registrationSheet">
			
				<g:if test="${registrationSheetInstance?.registerSheetDate}">
				<li class="fieldcontain">
					<span id="registerSheetDate-label" class="property-label"><g:message code="registrationSheet.registerSheetDate.label" default="Register Sheet Date" /></span>
					
						<span class="property-value" aria-labelledby="registerSheetDate-label"><g:formatDate date="${registrationSheetInstance?.registerSheetDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.registerSheetName}">
				<li class="fieldcontain">
					<span id="registerSheetName-label" class="property-label"><g:message code="registrationSheet.registerSheetName.label" default="Register Sheet Name" /></span>
					
						<span class="property-value" aria-labelledby="registerSheetName-label"><g:fieldValue bean="${registrationSheetInstance}" field="registerSheetName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.theClass}">
				<li class="fieldcontain">
					<span id="theClass-label" class="property-label"><g:message code="registrationSheet.theClass.label" default="The Class" /></span>
					
						<span class="property-value" aria-labelledby="theClass-label"><g:link controller="class" action="show" id="${registrationSheetInstance?.theClass?.id}">${registrationSheetInstance?.theClass?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registrationSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${registrationSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
