<%@ page import="uk.ac.shu.webarch.eregister.Class" %>



<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'classDate', 'error')} required">
	<label for="classDate">
		<g:message code="class.classDate.label" default="Class Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="classDate" precision="day"  value="${classInstance?.classDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'classInstructor', 'error')} required">
	<label for="classInstructor">
		<g:message code="class.classInstructor.label" default="Class Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classInstructor" name="classInstructor.id" from="${uk.ac.shu.webarch.eregister.Instructorgrails.list()}" optionKey="id" required="" value="${classInstance?.classInstructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'className', 'error')} ">
	<label for="className">
		<g:message code="class.className.label" default="Class Name" />
		
	</label>
	<g:textField name="className" value="${classInstance?.className}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'classesEnrolled', 'error')} ">
	<label for="classesEnrolled">
		<g:message code="class.classesEnrolled.label" default="Classes Enrolled" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${classInstance?.classesEnrolled?}" var="c">
    <li><g:link controller="enrollment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['class.id': classInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

