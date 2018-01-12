<header class="fixed-top" role="banner">
	<div class="container">
		<div class="row">
			<div class="col-sm col-sm-auto">
				<a href="$BaseHref" class="brand" rel="home">
					<h1>$SiteConfig.Title</h1>
					<% if $SiteConfig.Tagline %>
					<p>$SiteConfig.Tagline</p>
					<% end_if %>
				</a>
			</div>
			<div class="col-sm">
				<% with $SiteConfig.ContactPage %>
                    <ul class="nav justify-content-end">
                        <% if $PhoneNumber %>
                            <li class="nav-item">
                                <span class="nav-link">$PhoneNumber</span>
                            </li>
                        <% end_if %>
                        <% if $Email %>
                            <li class="nav-item">
                                <a class="nav-link" href="mailto:$Email">$Email</a>
                            </li>
                        <% end_if %>
                    </ul>
                <% end_with %>
				<% if $SearchForm %>
					<span class="search-dropdown-icon">L</span>
					<div class="search-bar">
						$SearchForm
					</div>
				<% end_if %>
				<% include Navigation %>
			</div>
		</div>
	</div>
</header>
