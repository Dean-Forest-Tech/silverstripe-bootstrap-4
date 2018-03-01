<header class="fixed-top" role="banner">
	<div class="container">
		<div class="row  align-items-stretch">
			<div class="col-sm col-sm-auto">
				<h1>				
					<a href="$BaseHref" class="brand" rel="home">
						<% if $SiteConfig.Logo %>
							<img class="img-fluid" src="$SiteConfig.Logo.ScaleHeight(50).URL" alt="$SiteConfig.Title">
						<% else %>
							$SiteConfig.Title
						<% end_if %>
					</a>
				</h1>
				<% if $SiteConfig.Tagline %>
					<p class="d-none d-sm-block">
						<a href="$BaseHref" class="brand" rel="home">
								$SiteConfig.Tagline
						</a>
					</p>
				<% end_if %>
			</div>
			<div class="col-sm <% if $SearchForm %>searchform-enabled<% end_if %>">
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
					<div class="search-bar">
						$SearchForm
					</div>
				<% end_if %>
				<div class="row align-items-end"><% include Navigation %></div>
			</div>
		</div>
	</div>
	<div class="bottom-bar"></div>
</header>
