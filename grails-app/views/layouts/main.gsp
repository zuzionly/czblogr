<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="czblogr">
        <meta name="author" content="Nicholas">
        <r:require module='jquery' />
        <r:require modules="bootstrap"/>
        <r:require modules="application"/>
        <g:layoutHead/>
		<r:layoutResources />

        <!-- CSS -->
        <style>
            .slider {
                position: relative;
            }
            #lock {
                background: #333;
                height: 100%;
                width: 100%;
                top: 0px;
                left: 0px;
                position: fixed;
                z-index: 1000;
                opacity: 0.8;
                -moz-opacity: 0.8;
                filter:alpha(opacity=8);
            }

            #loading {
                background: url("../static/img/loading01.png") no-repeat top left;
                width: 150px;
                height: 50px;
                margin: 0 auto;
            }
            #uploadprogress {
                position: relative;
                display:none;
            }

            #progUpdate {
                position: relative;
            }
        </style>
    </head>
    <body>
        <!-- Part 1: Wrap all page content here -->
        <div id="wrap">
            <div class="container">
                <div class="masthead">
                    <ul id="nav_tab" class="nav nav-tabs pull-right">
                        <li id="home"><a href="${createLink(uri: '/')}" class="button" rel="nav" data-pjax="${createLink(uri: '/')}">Home</a></li>
                        <li id="about">
                            <a href="${createLink(uri: '/about')}" class="button" rel="nav" data-pjax="${createLink(uri: '/about')}">About</a>
                        </li>
                        <li id="admin">
                            <a href="${createLink(uri: '/admin')}" class="button" rel="nav" data-pjax="${createLink(uri: '/admin')}">Manage posts</a>
                        </li>
                        <li id="settings">
                            <a href="${createLink(uri: '/settings')}" class="button" rel="nav" data-pjax="${createLink(uri: '/settings')}">Settings</a>
                        </li>
                        <li id="guestbook">
                            <a href="${createLink(uri: '/guestbook')}" class="button" rel="nav" data-pjax="${createLink(uri: '/guestbook')}">Guest Book</a>
                        </li>
                    </ul>
                    <div class="hidden-phone">
                        <!-- Button to trigger modal -->
                        <h2 class="muted"><a id="blog_title" href="${createLink(uri: '/')}" data-pjax="${createLink(uri: '/')}" style="font-family: 'Tangerine', serif;text-shadow: 4px 4px 4px #aaa;">๑۩۞۩๑Nicholas' Clerk</a></h2>
                        <span>__ash of time</span>
                    </div>
                    <time>

                        <div class="visible-phone">
                            <h3><a href="${createLink(uri: '/')}">Nicholas's Clerk</a></h3>
                            <span>__ash of time</span>
                        </div>
                        <div class="hidden-phone">
                        </div>
                    </time>

                </div><!-- end masthead-->
                <hr>
                <div id="main-content"><!-- main-content-->
                    <div class="slider">
                        <g:layoutBody/>
                    </div>
                </div><!-- end main-content-->
            </div><!-- end container -->
        </div><!-- end wrap-->
        <!-- end page content -->
        <!-- Begin footer content -->
        <footer>
            <div class="container">
                <div class="row-fluid">
                    <hr>
                    <div class="span8 offset4">
                        <span class="powered-by">
                            <p class="muted credit">Powered by <a href="http://github.com/zuzionly/czblogr">czblogr</a>.</p>
                        </span>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end footer content -->
        <div id="lock" class="hide">
            <div id="loading"></div>
        </div>
		<r:layoutResources />
	</body>
</html>
