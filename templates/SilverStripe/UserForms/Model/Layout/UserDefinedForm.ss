<% if $Menu(2) || $SideBarView.Widgets %>
	<% include SideBar %>
<% end_if %>

<div class="col-sm content" role="main">
	<div class="row">
		<div class="col-sm-6">
			$Content
		</div>
		<div class="col-sm-6">
			$Form
		</div>
	</div>
	$PageComments
</div>