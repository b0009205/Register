<%@ page import="uk.ac.shu.webarch.eregister.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'classEnrollment', 'error')} required">
	<label for="classEnrollment">
		<g:message code="enrollment.classEnrollment.label" default="Class Enrollment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classEnrollment" name="classEnrollment.id" from="${uk.ac.shu.webarch.eregister.Class.list()}" optionKey="id" required="" value="${enrollmentInstance?.classEnrollment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enrollmentDate', 'error')} required">
	<label for="enrollmentDate">
		<g:message code="enrollment.enrollmentDate.label" default="Enrollment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="enrollmentDate" precision="day"  value="${enrollmentInstance?.enrollmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enrollmentName', 'error')} ">
	<label for="enrollmentName">
		<g:message code="enrollment.enrollmentName.label" default="Enrollment Name" />
		
	</label>
	<g:textField name="enrollmentName" value="${enrollmentInstance?.enrollmentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'studentEnrollment', 'error')} required">
	<label for="studentEnrollment">
		<g:message code="enrollment.studentEnrollment.label" default="Student Enrollment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="studentEnrollment" name="studentEnrollment.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${enrollmentInstance?.studentEnrollment?.id}" class="many-to-one"/>
</div>

