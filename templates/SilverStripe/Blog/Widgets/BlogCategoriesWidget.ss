<% if $Categories %>
	<ul class="list-group list-group-flush">
		<% loop $Categories %>
			<li class="list-group-item">
				<a href="$Link" title="$Title">
					<span class="text">$Title</span>
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>