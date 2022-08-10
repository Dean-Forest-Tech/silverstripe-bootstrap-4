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

		<% include Icons %>
		<% include Requirements %>
		<% include Requirements_extra %>
	</head>
	<body <% if $isHomePage %>class="home-page"<% end_if %> <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
		
		<% include Header %>

		<div class="main<% if $Level(2) %> sublevel<% end_if %><% if $FeaturedImage || $MapEmbed %> no-pad-top<% end_if %><% if $SiteConfig.TileBackground %> tile-background<% else %> full-background<% end_if %>" role="main"<% if $SiteConfig.Background %> style="background-image: url($SiteConfig.Background.ScaleMaxWidth(1920).URL)"<% end_if %>>
			<%-- Banner to contain featured image, page title, etc --%>
			<% include Banner %>
		
			<%-- 
				Wrap Layout in an include, so the include can be
				overwritten, rather than the core template
			--%>
			<% include Layout Layout=$Layout, Top=$Top, Me=$Me %>
		</div>

		<% include Footer %>

	</body>
</html>
