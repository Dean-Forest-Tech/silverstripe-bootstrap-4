<h2 class="text-center">$MenuTitle</h2>
<div class="row">
    <% if $FeaturedImage %>
        <div class="col-sm" role="main">
            <p class="banner-image"><img class="img-fluid" src="$FeaturedImage.Fill(1200,500).URL" alt="$FeaturedImage.Title"></p>
        </div>
    <% end_if %>
	<div class="col-sm content" role="main">
		$Content
		$Form
		$PageComments
	</div>
</div>