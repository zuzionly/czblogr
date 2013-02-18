<%@ page import="czblogr.Post" %>

<div class="">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${postInstance?.title}"/>
</div>

<div class="">
	<label for="content">
		<g:message code="post.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="800" rows="10" required="" value="${postInstance?.content}"/>
</div>

<div class="">
	<label for="draft">
		<g:message code="post.draft.label" default="Draft" />
		
	</label>
	<g:checkBox name="draft" value="${postInstance?.draft}" />
</div>

