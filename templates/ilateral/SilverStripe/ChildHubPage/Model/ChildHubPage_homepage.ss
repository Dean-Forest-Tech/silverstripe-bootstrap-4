<div class="row">
    <div class="container my-5">
        <h2 class="text-center"><span>$MenuTitle</span></h2>
        <p class="text-center">$Content.Summary <a href="$Link"><strong>See all $MenuTitle</strong></a></p>
        <% if $Children %>
            <div class="row content">
                <% loop $Children.Limit(4) %>
                    <% include ilateral\\SilverStripe\\ChildHubPage\\ChildHubGridItem_homepage %>
                <% end_loop %>
            </div>
        <% end_if %>
    </div>
</div>