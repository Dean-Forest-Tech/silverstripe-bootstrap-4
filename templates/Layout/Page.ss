<% include Banner %>

<% if $Menu(2) || $SideBarView.Widgets %>
	<% include SideBar %>
<% end_if %>

<div class="col-sm content-container" role="main">
	<article>
		<div class="content">$Content</div>
	</article>

	$Form
	$PageComments
</div>