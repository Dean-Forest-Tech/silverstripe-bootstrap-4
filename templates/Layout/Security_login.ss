<% if $Menu(2) || $SideBarView.Widgets %>
	<% include SideBar %>
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