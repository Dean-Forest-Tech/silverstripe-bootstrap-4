<% if $FeaturedImage %>
    <div class="row">
        <div class="col">
            <p class="banner-image">
                <img class="img-fluid" src="$FeaturedImage.FocusFill(1200,500).URL" alt="$FeaturedImage.Title">
            </p>
        </div>
    </div>
<% else_if $Parent.FeaturedImage %>
    <div class="row">
        <div class="col">
            <p class="banner-image">
                <img class="img-fluid" src="$Parent.FeaturedImage.FocusFill(1200,500).URL" alt="$Parent.FeaturedImage.Title">
            </p>
        </div>
    </div>
<% end_if %>

<div class="row">
    <div class="col">
        <h1<% if not $Level(2) %> class="text-center"<% end_if %>>
            $Title
        </h1>
    </div>
    <% include BreadCrumbs %>
</div>