<%--Include SidebarMenu recursively --%>
<% if LinkOrSection = section %>
	<% if $Children %>
		<% loop $Children %>
			<li class="$LinkingMode nav-item">
				<a href="$Link" class="$LinkingMode nav-link" title="Go to the $Title.XML page">
					<span class="text">$MenuTitle.XML</span>
				</a>

				<% if $Children %>
					<ul>
						<% include SidebarMenu %>
					</ul>
				<% end_if %>

			</li>
		<% end_loop %>
	<% end_if %>
<% end_if %>
