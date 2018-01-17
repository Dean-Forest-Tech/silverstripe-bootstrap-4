<h2 class="text-center"><span>$MenuTitle</span></h2>
<div class="row">
    <% if $FeaturedImage %>
        <div class="col-sm" role="main">
            <p class="banner-image"><img class="img-fluid" src="$FeaturedImage.Fill(1200,500).URL" alt="$FeaturedImage.Title"></p>
        </div>
    <% end_if %>
	<div class="col-sm content" role="main">
		<p>$Content.Summary</p>
		$Form
        $PageComments
        <p><a class="btn btn-link" href="$Link">$MenuTitle</a></p>
	</div>
</div>