<%--Include SidebarMenu recursively --%>
<% if LinkOrSection = section %>
	<% if $Children %>
		<% loop $Children %>
			<li class="$LinkingMode nav-item">
				<a href="$Link" class="$LinkingMode nav-link<% if $isCurrent || $isSection %> active<% end_if %>" title="Go to the $Title.XML page">
					<span class="text">$MenuTitle.XML</span>
				</a>

				<% if $Children && LinkOrSection = section %>
					<div class="secondary">
						<ul class="nav flex-column">
							<% include SidebarMenu %>
						</ul>
					</div>
				<% end_if %>

			</li>
		<% end_loop %>
	<% end_if %>
<% end_if %>
