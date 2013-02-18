
<%@ page import="czblogr.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-post" class="" role="main">
			<h1>${postInstance?.title}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

			<div id="status" class="row-fluid">
                <div class="span3">
                    <span id="dateCreated-label" class="property-label"><g:message code="post.dateCreated.label" default="Date Created" />:</span>
                    <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postInstance?.dateCreated}" /></span>
                </div>
                <div class="span3">
                    <span id="lastUpdated-label" class="property-label"><g:message code="post.lastUpdated.label" default="Last Updated" />:</span>
                    <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${postInstance?.lastUpdated}" /></span>
                </div>
                <div class="span1">
                    <span id="views-label" class="property-label"><g:message code="post.views.label" default="Views" />:</span>
                    <span class="property-value" aria-labelledby="views-label"><g:fieldValue bean="${postInstance}" field="views"/></span>
                </div>
                <div class="span1">
                    <g:if test="${postInstance?.draft}">
                        <span id="draft-label" class="property-label"><g:message code="post.draft.label" default="Draft" />:</span>
                        <span class="property-value" aria-labelledby="draft-label"><g:formatBoolean boolean="${postInstance?.draft}" /></span>
                    </g:if>
                </div>
            </div>
            <br>
            <div id="content" class="row-fluid">
            <g:if test="${postInstance?.content}">
                <markdown:renderHtml text="${postInstance.content}"/>
            </g:if>
            </div>
            <br>
            <g:if test="${postInstance?.comments}">
                <ol>
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="post.comments.label" default="Comments" /></span>
					
						<g:each in="${postInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
                </ol>
            </g:if>
			

			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${postInstance?.id}" />
					<g:actionSubmit class="btn btn-inverse" action="edit"  value="${message(code: 'default.button.edit.label', default: 'Edit')}" id="${postInstance?.id}"/>
					<g:actionSubmit class="btn btn-inverse" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
