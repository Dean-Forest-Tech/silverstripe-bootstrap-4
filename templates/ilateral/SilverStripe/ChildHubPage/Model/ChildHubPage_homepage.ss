<h2 class="text-center"><span>$MenuTitle</span></h2>
<p class="text-center">$Content.Summary</p>
<% if $Children %>
    <div class="row content">
        <% loop $Children.Limit(4) %>
            <% include ilateral\\SilverStripe\\ChildHubPage\\ChildHubGridItem_homepage %>
        <% end_loop %>
    </div>
<% end_if %>
<p class="text-center"><a class="btn btn-primary" href="$Link"><strong>See all $MenuTitle</strong></a></p>
