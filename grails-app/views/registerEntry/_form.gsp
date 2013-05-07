<%@ page import="uk.ac.shu.webarch.eregister.RegisterEntry" %>



<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'regEntry', 'error')} required">
	<label for="regEntry">
		<g:message code="registerEntry.regEntry.label" default="Reg Entry" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regEntry" name="regEntry.id" from="${uk.ac.shu.webarch.eregister.RegistrationSheet.list()}" optionKey="id" required="" value="${registerEntryInstance?.regEntry?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'regStudent', 'error')} ">
	<label for="regStudent">
		<g:message code="registerEntry.regStudent.label" default="Reg Student" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registerEntryInstance?.regStudent?}" var="r">
    <li><g:link controller="student" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="student" action="create" params="['registerEntry.id': registerEntryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'student.label', default: 'Student')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'registerEntryDate', 'error')} required">
	<label for="registerEntryDate">
		<g:message code="registerEntry.registerEntryDate.label" default="Register Entry Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registerEntryDate" precision="day"  value="${registerEntryInstance?.registerEntryDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'registerEntryName', 'error')} ">
	<label for="registerEntryName">
		<g:message code="registerEntry.registerEntryName.label" default="Register Entry Name" />
		
	</label>
	<g:textField name="registerEntryName" value="${registerEntryInstance?.registerEntryName}"/>
</div>

