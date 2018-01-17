<div class="row">
    <% if $FeaturedImage %>
        <div class="row">
            <p class="banner-image"><img class="img-fluid" src="$FeaturedImage.Fill(1200,500).URL" alt="$FeaturedImage.Title"></p>
        </div>	
    <% end_if %>
    <div class="col">
        <h1 class="text-center">
            $Title
        </h1>
    </div>
    <% include BreadCrumbs %>
</div>