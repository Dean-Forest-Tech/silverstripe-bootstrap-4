<% include Banner %>

<div class="blog-entry content-container col-sm">

	<article>
		<div class="content">$Content</div>
		<% if $Content %><hr /><% end_if %>
		<% if $PaginatedList.Exists %>
			<% loop $PaginatedList %>
				<% include SilverStripe\\Blog\\PostSummary %>
			<% end_loop %>
		<% else %>
			<p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
		<% end_if %>
	</article>

	$Form
	$CommentsForm

	<% with $PaginatedList %>
		<% include SilverStripe\\Blog\\Pagination %>
	<% end_with %>
</div>

<% include SilverStripe\\Blog\\BlogSideBar %>