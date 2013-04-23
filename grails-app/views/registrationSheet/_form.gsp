<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'registerSheetDate', 'error')} required">
	<label for="registerSheetDate">
		<g:message code="registrationSheet.registerSheetDate.label" default="Register Sheet Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registerSheetDate" precision="day"  value="${registrationSheetInstance?.registerSheetDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'registerSheetName', 'error')} ">
	<label for="registerSheetName">
		<g:message code="registrationSheet.registerSheetName.label" default="Register Sheet Name" />
		
	</label>
	<g:textField name="registerSheetName" value="${registrationSheetInstance?.registerSheetName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'theClass', 'error')} required">
	<label for="theClass">
		<g:message code="registrationSheet.theClass.label" default="The Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="theClass" name="theClass.id" from="${uk.ac.shu.webarch.eregister.Class.list()}" optionKey="id" required="" value="${registrationSheetInstance?.theClass?.id}" class="many-to-one"/>
</div>

