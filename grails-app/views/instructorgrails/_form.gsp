<%@ page import="uk.ac.shu.webarch.eregister.Instructorgrails" %>



<div class="fieldcontain ${hasErrors(bean: instructorgrailsInstance, field: 'classesTaught', 'error')} ">
	<label for="classesTaught">
		<g:message code="instructorgrails.classesTaught.label" default="Classes Taught" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${instructorgrailsInstance?.classesTaught?}" var="c">
    <li><g:link controller="class" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="class" action="create" params="['instructorgrails.id': instructorgrailsInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'class.label', default: 'Class')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: instructorgrailsInstance, field: 'instructorName', 'error')} ">
	<label for="instructorName">
		<g:message code="instructorgrails.instructorName.label" default="Instructor Name" />
		
	</label>
	<g:textField name="instructorName" value="${instructorgrailsInstance?.instructorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorgrailsInstance, field: 'instructorRoom', 'error')} ">
	<label for="instructorRoom">
		<g:message code="instructorgrails.instructorRoom.label" default="Instructor Room" />
		
	</label>
	<g:textField name="instructorRoom" value="${instructorgrailsInstance?.instructorRoom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorgrailsInstance, field: 'instructorTelephone', 'error')} ">
	<label for="instructorTelephone">
		<g:message code="instructorgrails.instructorTelephone.label" default="Instructor Telephone" />
		
	</label>
	<g:textField name="instructorTelephone" value="${instructorgrailsInstance?.instructorTelephone}"/>
</div>

