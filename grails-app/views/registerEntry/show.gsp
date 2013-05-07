
<%@ page import="uk.ac.shu.webarch.eregister.RegisterEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registerEntry.label', default: 'RegisterEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registerEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registerEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registerEntry">
			
				<g:if test="${registerEntryInstance?.regEntry}">
				<li class="fieldcontain">
					<span id="regEntry-label" class="property-label"><g:message code="registerEntry.regEntry.label" default="Reg Entry" /></span>
					
						<span class="property-value" aria-labelledby="regEntry-label"><g:link controller="registrationSheet" action="show" id="${registerEntryInstance?.regEntry?.id}">${registerEntryInstance?.regEntry?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.regStudent}">
				<li class="fieldcontain">
					<span id="regStudent-label" class="property-label"><g:message code="registerEntry.regStudent.label" default="Reg Student" /></span>
					
						<g:each in="${registerEntryInstance.regStudent}" var="r">
						<span class="property-value" aria-labelledby="regStudent-label"><g:link controller="student" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.registerEntryDate}">
				<li class="fieldcontain">
					<span id="registerEntryDate-label" class="property-label"><g:message code="registerEntry.registerEntryDate.label" default="Register Entry Date" /></span>
					
						<span class="property-value" aria-labelledby="registerEntryDate-label"><g:formatDate date="${registerEntryInstance?.registerEntryDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.registerEntryName}">
				<li class="fieldcontain">
					<span id="registerEntryName-label" class="property-label"><g:message code="registerEntry.registerEntryName.label" default="Register Entry Name" /></span>
					
						<span class="property-value" aria-labelledby="registerEntryName-label"><g:fieldValue bean="${registerEntryInstance}" field="registerEntryName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registerEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${registerEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
