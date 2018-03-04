<% include Banner %>

<div class="row">
	<% if $Menu(2) || $SideBarView.Widgets %>
		<aside class="col-sm col-sm-3" role="complementary">
			<% include SideBar %>
		</aside>
	<% end_if %>
	<div class="col-sm content" role="main">
		$Content
		$Form
		$PageComments
	</div>
</div>