﻿<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>aboutme</title>
    </head>
    <body>
        <div class="slider">
            <div class="page-header">
            <h1>Settings <small> -- config or something else</small></h1>
            <form id="settings" class="form-horizontal" action="{{ url_for('save_settings') }}" method="POST">
                <fieldlist>
                    <div class="control-group">
                        <label class="control-label" for="POSTS_PER_PAGE">Post per page</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-th-list"></i></span>
                                <select class="span1" name="POSTS_PER_PAGE" id="POSTS_PER_PAGE">
                                    <option value="5" {% if config["POSTS_PER_PAGE"]=='5' %}selected{% endif %} >5</option>
                                    <option value="10" {% if config["POSTS_PER_PAGE"]=='10' %}selected{% endif %}>10</option>
                                    <option value="15" {% if config["POSTS_PER_PAGE"]=='15' %}selected{% endif %}>15</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="POST_CONTENT_ON_HOMEPAGE">Show content on homepage</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <label class="radio">
                                    <input type="radio" name="POST_CONTENT_ON_HOMEPAGE" id="POST_CONTENT_ON_HOMEPAGE1" value="True" {% if config["POST_CONTENT_ON_HOMEPAGE"]=='True' %}checked{% endif %}>
                                    ON
                                </label>
                                <label class="radio">
                                    <input type="radio" name="POST_CONTENT_ON_HOMEPAGE" id="POST_CONTENT_ON_HOMEPAGE2" value="False" {% if config["POST_CONTENT_ON_HOMEPAGE"]=='False' %}checked{% endif %}>
                                    OFF
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="SHOW_VIEWS_ON_HOMEPAGE">Show views on homepage</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <label class="radio">
                                    <input type="radio" class="btn" name="SHOW_VIEWS_ON_HOMEPAGE" id="SHOW_VIEWS_ON_HOMEPAGE1" value="True" {% if config["SHOW_VIEWS_ON_HOMEPAGE"]=='True' %}checked{% endif %}>ON
                                </label>
                                <label class="radio">
                                    <input type="radio" class="btn" name="SHOW_VIEWS_ON_HOMEPAGE" id="SHOW_VIEWS_ON_HOMEPAGE2" value="False" {% if config["SHOW_VIEWS_ON_HOMEPAGE"]=='False' %}checked{% endif %}>OFF
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="ANALYTICS_ID">Google Analytics id</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-user"></i></span>
                                <input class="span3" name="ANALYTICS_ID" id="ANALYTICS_ID" type="text" value="{{ config.get("ANALYTICS_ID","0") }}">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="GITHUB_USERNAME">Github username</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-user"></i></span>
                                <input class="span3" name="GITHUB_USERNAME" id="GITHUB_USERNAME" type="text" value="{{ config.get("GITHUB_USERNAME","0") }}">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="GOOGLE_PLUS_PROFILE">Google+ profile</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-user"></i></span>
                                <input class="span3" name="GOOGLE_PLUS_PROFILE" id="GOOGLE_PLUS_PROFILE" type="text" value="{{ config.get("GOOGLE_PLUS_PROFILE","0") }}">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="TWITTER_HANDLE">Twitter id</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-user"></i></span>
                                <input class="span3" name="TWITTER_HANDLE" id="TWITTER_HANDLE" type="text" value="{{ config.get("TWITTER_HANDLE","0") }}">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="CONTACT_EMAIL">Email address</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-envelope"></i></span>
                                <input class="span3" name="CONTACT_EMAIL" id="CONTACT_EMAIL" type="email" value="{{ config.get("CONTACT_EMAIL","0") }}">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="BLOG_TITLE">Blog Title</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-pencil"></i></span>
                                <input class="span3" name="BLOG_TITLE" id="BLOG_TITLE" type="text" value="{{ config.get("BLOG_TITLE","0") }}">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="BLOG_TAGLINE">Blog Tagline</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-tag"></i></span>
                                <input class="span3" name="BLOG_TAGLINE" id="BLOG_TAGLINE" type="text" value="{{ config.get("BLOG_TAGLINE","0") }}">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="DISQUS_NAME">Disqus Account Name</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-user"></i></span>
                                <input class="span3" name="DISQUS_NAME" id="DISQUS_NAME" type="text" value="{{ config.get("DISQUS_NAME","0") }}">
                            </div>
                        </div>
                    </div>
                    <!-- to do
                    <div class="control-group">
                        <label class="control-label" for="FONT_NAME">Font Name</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-font"></i></span>
                                <input class="span3" name="FONT_NAME" id="FONT_NAME" type="email" value="{{ config.get("FONT_NAME","0") }}">
                            </div>
                        </div>
                    </div>
                    -->
                    <div class="control-group">
                        <div class="controls">
                            <a id="save" class="btn btn-inverse" href="#" onClick="save_settings(false); return false;">
                                Save
                            </a>
                        </div>
                    </div>
                    <div id="result">
                    </div>
                </fieldlist>
            </form>
        </div>
    </body>
 </html>
