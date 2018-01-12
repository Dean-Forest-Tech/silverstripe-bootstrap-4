<div class="row">
	<div class="col-sm content" role="main">
		<% if $FeaturedImage %>
			<p><img class="img-fluid" src="$FeaturedImage.Fill(1200,400).URL" alt="$featuredImage.Title"></p>
		<% end_if %>
		<h1>$Title</h1>
		$Content
		$Form
		$PageComments
	</div>
	<% if $Menu(2) || $SideBarView.Widgets %>
		<aside class="col-sm col-sm-auto order-1" role="complementary">
			<% include SideBar %>
		</aside>
	<% end_if %>
</div>