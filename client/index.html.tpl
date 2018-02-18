<!doctype html>
<html>
	<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no">

	<link rel="preload" as="script" href="js/bundle.vendor.js">
	<link rel="preload" as="script" href="js/bundle.js">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/primer-tooltips.css">
	<link rel="stylesheet" href="css/style.css">
	<link id="theme" rel="stylesheet" href="<%- theme %>">
	<% _.forEach(stylesheets, function(css) { %>
		<link rel="stylesheet" href="packages/<%- css %>">
	<% }); %>
	<style id="user-specified-css"></style>

	<title>The Lounge</title>

	<!-- Browser tab icon -->
	<link rel="shortcut icon" href="img/favicon-normal.ico" data-other="img/favicon-alerted.ico" data-toggled="false" id="favicon" type="image/x-icon">

	<!-- Safari pinned tab icon -->
	<link rel="mask-icon" href="img/favicon-transparent-bg.svg" color="#415363">

	<link rel="manifest" href="manifest.json">

	<!-- iPhone 4, iPhone 4s, iPhone 5, iPhone 5c, iPhone 5s, iPhone 6, iPhone 6s, iPhone 7, iPhone 7s, iPhone8 -->
	<link rel="apple-touch-icon" sizes="120x120" href="img/logo-grey-bg-120x120px.png">
	<!-- iPad and iPad mini @2x -->
	<link rel="apple-touch-icon" sizes="152x152" href="img/logo-grey-bg-152x152px.png">
	<!-- iPad Pro -->
	<link rel="apple-touch-icon" sizes="167x167" href="img/logo-grey-bg-167x167px.png">
	<!-- iPhone X, iPhone 8 Plus, iPhone 7 Plus, iPhone 6s Plus, iPhone 6 Plus -->
	<link rel="apple-touch-icon" sizes="180x180" href="img/logo-grey-bg-180x180px.png">

	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<meta name="mobile-web-app-capable" content="yes">
	<meta name="theme-color" content="<%- themeColor %>">

	</head>
	<body class="signed-out<%- public ? " public" : "" %>" data-transports="<%- JSON.stringify(transports) %>">

	<div id="wrap">
	<div id="viewport">
		<aside id="sidebar">
			<div class="networks"></div>
			<div class="empty">
				You're not connected to any networks yet.
			</div>
		</aside>
		<footer id="footer">
			<span class="tooltipped tooltipped-n tooltipped-no-touch" aria-label="Sign in"><button class="icon sign-in" data-target="#sign-in" aria-label="Sign in"></button></span>
			<span class="tooltipped tooltipped-n tooltipped-no-touch" aria-label="Connect to network"><button class="icon connect" data-target="#connect" aria-label="Connect to network"></button></span>
			<span class="tooltipped tooltipped-n tooltipped-no-touch" aria-label="Settings"><button class="icon settings" data-target="#settings" aria-label="Settings"></button></span>
			<span class="tooltipped tooltipped-n tooltipped-no-touch" aria-label="Help"><button class="icon help" data-target="#help" aria-label="Help"></button></span>
			<span class="tooltipped tooltipped-n tooltipped-no-touch" aria-label="Sign out"><button class="icon sign-out" id="sign-out" aria-label="Sign out"></button></span>
		</footer>
		<div id="main">
			<div id="windows">
				<div id="loading" class="window active">
					<div class="container">
						<div class="row">
							<div class="col-xs-12">
								<h1 class="title" id="loading-title">The Lounge is loading…</h1>
							</div>
							<div class="col-xs-12">
								<p id="loading-page-message">Loading the app… <a href="http://enable-javascript.com/" target="_blank" rel="noopener">Make sure to have JavaScript enabled.</a></p>
								<p id="loading-slow">
									This is taking longer than it should, there might be
									connectivity issues.
								</p>
								<button id="loading-reload" class="btn">Reload page</button>
								<script async src="js/loading-error-handlers.js"></script>
							</div>
						</div>
					</div>
				</div>
				<div id="chat-container" class="window">
					<div id="chat"></div>
					<div id="connection-error"></div>
					<form id="form" method="post" action="">
						<div class="input">
							<span id="nick">
								<span id="nick-value" spellcheck="false"></span><!-- Comments here remove spaces between elements
								--><span id="set-nick-tooltip" class="tooltipped tooltipped-e" aria-label="Change nick…"><button id="set-nick" type="button" aria-label="Change nick…"></button></span><!--
								--><span id="cancel-nick-tooltip" class="tooltipped tooltipped-e" aria-label="Cancel"><button id="cancel-nick" type="button" aria-label="Cancel"></button></span><!--
								--><span id="save-nick-tooltip" class="tooltipped tooltipped-e" aria-label="Save"><button id="submit-nick" type="button" aria-label="Save"></button></span>
							</span>
							<textarea id="input" class="mousetrap"></textarea>
							<span id="submit-tooltip" class="tooltipped tooltipped-w tooltipped-no-touch" aria-label="Send message">
								<button id="submit" type="submit" aria-label="Send message"></button>
							</span>
						</div>
					</form>
				</div>
				<div id="sign-in" class="window"></div>
				<div id="connect" class="window"></div>
				<div id="settings" class="window"></div>
				<div id="help" class="window"></div>
				<div id="changelog" class="window"></div>
			</div>
		</div>
	</div>
	</div>

	<div id="context-menu-container">
		<ul id="context-menu"></ul>
	</div>

	<div id="image-viewer"></div>

	<script src="js/bundle.vendor.js"></script>
	<script src="js/bundle.js"></script>

	</body>
</html>
