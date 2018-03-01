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
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

		<% if $SiteConfig.Icon %>
			<link rel="shortcut icon" href="$SiteConfig.Icon.FocusFill(16,16).URL">
			<link rel="icon" sizes="16x16" href="$SiteConfig.Icon.FocusFill(16,16).URL" />
			<link rel="icon" sizes="32x32" href="$SiteConfig.Icon.FocusFill(32,32).URL" />
			<link rel="icon" sizes="48x48" href="$SiteConfig.Icon.FocusFill(48,48).URL" />
			<link rel="icon" sizes="64x64" href="$SiteConfig.Icon.FocusFill(64,64).URL" />
			<link rel="icon" sizes="128x128" href="$SiteConfig.Icon.FocusFill(128,128).URL" />
			<link rel="icon" sizes="196x196" href="$SiteConfig.Icon.FocusFill(196,196).URL" />

			<link rel="apple-touch-icon" href="$SiteConfig.Icon.FocusFill(60,60).URL" />
			<link rel="apple-touch-icon" sizes="76x76" href="$SiteConfig.Icon.FocusFill(76,76).URL">
			<link rel="apple-touch-icon" sizes="120x120" href="$SiteConfig.Icon.FocusFill(120,120).URL">
			<link rel="apple-touch-icon" sizes="152x152" href="$SiteConfig.Icon.FocusFill(152,152).URL">
		<% else %>
			<link rel="shortcut icon" href="themes/bootstrap/icons/icon-16.png">
			<link rel="icon" sizes="16x16" href="themes/bootstrap/icons/icon-16.png" />
			<link rel="icon" sizes="32x32" href="themes/bootstrap/icons/icon-32.png" />
			<link rel="icon" sizes="48x48" href="themes/bootstrap/icons/icon-48.png" />
			<link rel="icon" sizes="64x64" href="themes/bootstrap/icons/icon-64.png" />
			<link rel="icon" sizes="128x128" href="themes/bootstrap/icons/icon-128.png" />
			<link rel="icon" sizes="196x196" href="themes/bootstrap/icons/icon-196.png" />

			<link rel="apple-touch-icon" href="themes/bootstrap/icons/icon-60.png" />
			<link rel="apple-touch-icon" sizes="76x76" href="themes/bootstrap/icons/icon-76.png">
			<link rel="apple-touch-icon" sizes="120x120" href="themes/bootstrap/icons/icon-120.png">
			<link rel="apple-touch-icon" sizes="152x152" href="themes/bootstrap/icons/icon-152.png">
		<% end_if %>

		<% require themedCSS('layout.min') %>

		<% require javascript("themes/bootstrap/node_modules/jquery/dist/jquery.min.js") %>
		<% require javascript("themes/bootstrap/node_modules/popper.js/dist/umd/popper.min.js") %>
		<% require javascript("themes/bootstrap/node_modules/tether/dist/js/tether.min.js") %>
		<% require javascript("themes/bootstrap/node_modules/bootstrap/dist/js/bootstrap.min.js") %>
		<% require javascript("themes/bootstrap/node_modules/@fortawesome/fontawesome/index.js") %>
		<% require javascript("themes/bootstrap/node_modules/@fortawesome/fontawesome-free-solid/index.js") %>
		<% require javascript("themes/bootstrap/node_modules/@fortawesome/fontawesome-free-regular/index.js") %>
		<% require javascript("themes/bootstrap/node_modules/@fortawesome/fontawesome-free-brands/index.js") %>

		<link rel="shortcut icon" href="themes/bootstrap/images/favicon.ico" />
	</head>
	<body class="$ClassName" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
	<% include Header %>
	<div class="main<% if $FeaturedImage || $MapEmbed %> no-pad-top<% end_if %><% if $SiteConfig.TileBackground %> tile-background<% else %> full-background<% end_if %>" role="main"<% if $SiteConfig.Background %> style="background-image: url($SiteConfig.Background.ScaleMaxWidth(1920).URL)"<% end_if %>>
		<div class="container typography line">
			<% include Banner %>
			$Layout
		</div>
	</div>
	<% include Footer %>
	</body>
</html>
