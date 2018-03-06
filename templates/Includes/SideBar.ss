<aside class="col-sm col-sm-3" role="complementary">
	<% if $Menu(2) %>
		<nav class="secondary card">
			<% with $Level(1) %>
				<ul class="nav nav-pills flex-column">
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	<% end_if %>
</aside>