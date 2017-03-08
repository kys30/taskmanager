<%@ page import="com.taskmanager.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="task.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${taskInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${taskInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="task.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: taskInstance, field: 'amount')}" required=""/>
</div>

