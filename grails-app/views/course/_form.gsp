<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseClasses', 'error')} ">
	<label for="courseClasses">
		<g:message code="course.courseClasses.label" default="Course Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.courseClasses?}" var="c">
    <li><g:link controller="class" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="class" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'class.label', default: 'Class')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message code="course.courseName.label" default="Course Name" />
		
	</label>
	<g:textField name="courseName" value="${courseInstance?.courseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseYear', 'error')} ">
	<label for="courseYear">
		<g:message code="course.courseYear.label" default="Course Year" />
		
	</label>
	<g:textField name="courseYear" value="${courseInstance?.courseYear}"/>
</div>

