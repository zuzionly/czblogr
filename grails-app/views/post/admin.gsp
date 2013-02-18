<%@ page import="czblogr.Post" %>
<%@ page import="czblogr.AttrTagLib" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <div id="list-post" class="" role="main">
            <div id="sub-title" class="row-fluid">
                <div class="span2">
                    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                </div>
                <div class="span1">
                    <g:link class="btn btn-inverse" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                </div>
            </div>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <g:sortableColumn property="title" title="${message(code: 'post.title.label', default: 'Title')}" />
                        <g:sortableColumn property="slug" title="${message(code: 'post.slug.label', default: 'Slug')}" />
                        <g:sortableColumn property="content" title="${message(code: 'post.content.label', default: 'Content')}" />
                        <g:sortableColumn property="dateCreated" title="${message(code: 'post.dateCreated.label', default: 'Date Created')}" />
                        <g:sortableColumn property="lastUpdated" title="${message(code: 'post.lastUpdated.label', default: 'Last Updated')}" />
                        <g:sortableColumn property="draft" title="${message(code: 'post.draft.label', default: 'Draft')}" />
                        <td>Delete</td>
                    </tr>
                </thead>
                <tbody>
                <g:each in="${postInstanceList}" status="i" var="postInstance">
                    <tr>
                        <td><g:link action="edit" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "title")}</g:link></td>
                        <td>${fieldValue(bean: postInstance, field: "slug")}</td>
                        <td><g:attr value="${postInstance.content}"  maxLength="30"/></td>
                        <td><g:formatDate date="${postInstance.dateCreated}" /></td>
                        <td><g:formatDate date="${postInstance.lastUpdated}" /></td>
                        <td><g:formatBoolean boolean="${postInstance.draft}" /></td>
                        <td><g:link action="delete" id="${postInstance.id}">Delete</g:link></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${postInstanceTotal}" />

            </div>
        </div>
	</body>
</html>
