<!doctype html>

	<!--[if !IE]><!-->
	<html lang="$ContentLocale">
	<!--<![endif]-->
	<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
	<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
	<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
	<head>
		<% base_tag %>
		<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		$MetaTags(false)
		<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<!-- Place favicon.ico and apple-touch-icon.png in the root of your domain and delete these references -->
		<link rel="shortcut icon" href="{$ThemeDir}/icons/favicon.ico">
		
		<% if $FeaturedImage %>
			<meta property="og:image" content="{$BaseHref}{$FeaturedImage.SetWidth(550).FileName}" />
		<% else_if $Image %>
			<meta property="og:image" content="{$BaseHref}{$Image.SetWidth(550).FileName}" />
		<% else_if $Images.exists %>
			<meta property="og:image" content="{$BaseHref}{$Images.first.SetWidth(550).FileName}" />
		<% else_if $Parent.FeaturedImage %>
			<meta property="og:image" content="{$BaseHref}{$Parent.FeaturedImage.SetWidth(550).FileName}" />
		<% else_if $SiteConfig.Logo %>
			<meta property="og:image" content="{$BaseHref}{$SiteConfig.Logo.SetWidth(550).FileName}" />
		<% end_if %>

		<link rel="icon" sizes="16x16" href="{$ThemeDir}/icons/icon-16.png" />
		<link rel="icon" sizes="32x32" href="{$ThemeDir}/icons/icon-32.png" />
		<link rel="icon" sizes="48x48" href="{$ThemeDir}/icons/icon-48.png" />
		<link rel="icon" sizes="64x64" href="{$ThemeDir}/icons/icon-64.png" />
		<link rel="icon" sizes="128x128" href="{$ThemeDir}/icons/icon-128.png" />
		<link rel="icon" sizes="196x196" href="{$ThemeDir}/icons/icon-196.png" />

		<link rel="apple-touch-icon" href="{$ThemeDir}/icons/icon-60.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="{$ThemeDir}/icons/icon-76.png">
		<link rel="apple-touch-icon" sizes="120x120" href="{$ThemeDir}/icons/icon-120.png">
		<link rel="apple-touch-icon" sizes="152x152" href="{$ThemeDir}/icons/icon-152.png">

		<% require themedCSS('layout') %>
		<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	</head>
	<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
	<% include Header %>
	<div class="main<% if $FeaturedImage || $MapEmbed %> no-pad-top<% end_if %>" role="main">
		<div class="container typography line">
			<% include Banner %>
			$Layout
		</div>
	</div>
	<% include Footer %>

	<script type="text/javascript" src="{$ThemeDir}/bower_components/jquery/dist/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script type="text/javascript" src="{$ThemeDir}/bower_components/tether/dist/js/tether.js"></script>
	<script type="text/javascript" src="{$ThemeDir}/bower_components/bootstrap/dist/js/bootstrap.js"></script>
	</body>
</html>
