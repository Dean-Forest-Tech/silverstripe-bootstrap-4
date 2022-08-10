<div class="blog-entry content-container col-sm">
	<% include SilverStripe\\Blog\\MemberDetails %>

	<% if $PaginatedList.Exists %>
		<h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
		<% loop $PaginatedList %>
			<% include SilverStripe\\Blog\\PostSummary %>
		<% end_loop %>
	<% end_if %>

	$Form
	$CommentsForm

	<% with $PaginatedList %>
		<% include Pagination %>
	<% end_with %>

</div>

<% include SilverStripe\\Blog\\BlogSideBar %>