<% include Banner %>

<div class="row">
	<% if $Menu(2) || $SideBarView.Widgets %>
		<aside class="col-sm col-sm-3" role="complementary">
			<% include SideBar %>
		</aside>
	<% end_if %>
	<div class="col-sm content" role="main">
		<div class="row justify-content-md-center">
			<div class="col-md-8 col-lg-6">
				$Content
				$Form
			</div>
		</div>
		$PageComments
	</div>
</div>