<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'classesTaught', 'error')} ">
	<label for="classesTaught">
		<g:message code="instructor.classesTaught.label" default="Classes Taught" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${instructorInstance?.classesTaught?}" var="c">
    <li><g:link controller="class" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="class" action="create" params="['instructor.id': instructorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'class.label', default: 'Class')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorId', 'error')} ">
	<label for="instructorId">
		<g:message code="instructor.instructorId.label" default="Instructor Id" />
		
	</label>
	<g:textField name="instructorId" value="${instructorInstance?.instructorId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorName', 'error')} ">
	<label for="instructorName">
		<g:message code="instructor.instructorName.label" default="Instructor Name" />
		
	</label>
	<g:textField name="instructorName" value="${instructorInstance?.instructorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorRoom', 'error')} ">
	<label for="instructorRoom">
		<g:message code="instructor.instructorRoom.label" default="Instructor Room" />
		
	</label>
	<g:textField name="instructorRoom" value="${instructorInstance?.instructorRoom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorTelephone', 'error')} ">
	<label for="instructorTelephone">
		<g:message code="instructor.instructorTelephone.label" default="Instructor Telephone" />
		
	</label>
	<g:textField name="instructorTelephone" value="${instructorInstance?.instructorTelephone}"/>
</div>

