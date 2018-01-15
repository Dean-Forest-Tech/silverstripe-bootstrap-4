<% if $Archive %>
	<ul class="list-group list-group-flush">
		<% loop $Archive %>
			<li class="list-group-item">
				<a href="$Link" title="$Title">
					<span class="text">$Title</span>
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>
