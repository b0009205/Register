<%@ page import="uk.ac.shu.webarch.eregister.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentCourse', 'error')} ">
	<label for="studentCourse">
		<g:message code="student.studentCourse.label" default="Student Course" />
		
	</label>
	<g:textField name="studentCourse" value="${studentInstance?.studentCourse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentId', 'error')} ">
	<label for="studentId">
		<g:message code="student.studentId.label" default="Student Id" />
		
	</label>
	<g:textField name="studentId" value="${studentInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="student.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${studentInstance?.studentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentRegister', 'error')} required">
	<label for="studentRegister">
		<g:message code="student.studentRegister.label" default="Student Register" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="studentRegister" name="studentRegister.id" from="${uk.ac.shu.webarch.eregister.RegisterEntry.list()}" optionKey="id" required="" value="${studentInstance?.studentRegister?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentYear', 'error')} ">
	<label for="studentYear">
		<g:message code="student.studentYear.label" default="Student Year" />
		
	</label>
	<g:textField name="studentYear" value="${studentInstance?.studentYear}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentsEnrolled', 'error')} ">
	<label for="studentsEnrolled">
		<g:message code="student.studentsEnrolled.label" default="Students Enrolled" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.studentsEnrolled?}" var="s">
    <li><g:link controller="enrollment" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

