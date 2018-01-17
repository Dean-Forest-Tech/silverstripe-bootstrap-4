<h2 class="text-center">$MenuTitle</h2>
<% if $BlogPosts.Exists %>
    <div class="row">
        <% loop $BlogPosts.Limit(4) %>
            <% include SilverStripe\\Blog\\PostSummary_grid %>
        <% end_loop %>
    </div>
<% else %>
    <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
<% end_if %>