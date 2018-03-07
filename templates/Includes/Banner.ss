<% if $MapEmbed %>
    <div class="map-row row">
        <div class="mb-4 embed-responsive embed-responsive-map">
            $MapEmbed
        </div>
    </div>
<% else_if $FeaturedImage %>
    <p class="banner-image row mb-4">
        <img class="img-fluid" src="$FeaturedImage.FocusFill(1200,500).URL" alt="$FeaturedImage.Title">
    </p>
<% else_if $Parent.FeaturedImage %>
    <p class="banner-image row mb-4">
        <img class="img-fluid" src="$Parent.FeaturedImage.FocusFill(1200,500).URL" alt="$Parent.FeaturedImage.Title">
    </p>
<% end_if %>

<div class="col-sm-12">
    <div class="row">
        <div class="col">
            <h1<% if not $Level(2) %> class="text-center"<% end_if %>>
                $Title
            </h1>
        </div>
        <% include BreadCrumbs %>
    </div>
</div>