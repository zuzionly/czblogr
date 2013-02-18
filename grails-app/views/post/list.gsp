<%@ page import="czblogr.Post" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Nicholas' Clerk</title>
</head>
<body>
    <div class="listing">
        <g:each in="${postInstanceList}" status="i" var="${postInstance}">
            <div class="post">
                <div id="result-${postInstance.id}">
                </div>
                <div class="row">
                    <div class="span12">
                        <section id="post-${postInstance.id}">
                            <div class="post_header">
                                <h1><a href="${createLink(uri:"/post/show/${postInstance.id}")}" data-pjax="${createLink(uri:"/post/show/${postInstance.id}")}">${postInstance.title}</a></h1>
                            </div>
                            <div class="row-fluid" style="color: #999;">
                                <div class="span3">Posted:
                                    <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postInstance?.dateCreated}" /></span>
                                </div>
                                <div class="span3">Updated:
                                    <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${postInstance?.lastUpdated}" /></span>
                                </div>
                                 <div class="span1">Views:
                                    <span class="property-value" aria-labelledby="views-label"><g:fieldValue bean="${postInstance}" field="views"/></span>
                                 </div>
                             </div>
                            <div id="content-${postInstance.id}">
                                <markdown:renderHtml text="${postInstance.content}"/>
                            </div>
                        </section>
                        <hr>
                    </div>
                </div>
            </div>
        </g:each>
    </div><!--end listing-->
<ul class="pager">
    <g:paginate next="Forward" prev="Back" max="5" total="${postInstanceTotal}" />
</ul>
</body>
</html>
