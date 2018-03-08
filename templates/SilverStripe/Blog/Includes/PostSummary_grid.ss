<div class="post-summary col-sm">
	<h2 class="text-center">
		<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $MenuTitle %>$MenuTitle
			<% else %>$Title<% end_if %>
		</a>
	</h2>

	<p class="post-image">
		<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $FeaturedImage %>
				<img class="img-fluid" src="$FeaturedImage.Fill(600,300).URL" alt="$FeaturedImage.Title">
			<% else %>
				<img class="img-fluid" src="$Parent.FeaturedImage.Fill(600,300).URL" alt="$Parent.FeaturedImage.Title">
			<% end_if %>
		</a>
	</p>

	<% include SilverStripe\\Blog\\EntryMeta %>

	<% if $Summary %>
		$Summary
	<% else %>
		<p>$Excerpt</p>
	<% end_if %>
	    <p class="text-center">
			<a class="btn btn-primary" href="$Link">
				<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
			</a>
		</p>

</div>
<hr />
