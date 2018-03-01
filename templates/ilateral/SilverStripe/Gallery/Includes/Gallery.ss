<% if $Images %>
    <div class="gallery-thumbnails">
        <div class="row line">
            <% loop $Images %>
                <% with $GalleryThumbnail %>
                    <div class="col-lg-2 col-md-3 col-xs-6 mb-3 unit size1of5 <% if $MultipleOf(5) %>lastUnit<% end_if %>">
                        <img
                            class="gallery-thumbnail img-fluid"
                            src="{$Link}"
                            alt="{$Title}"
                            data-url="{$Up.GalleryImage.Link}"
                        />
                    </div>
                <% end_with %>
            <% end_loop %>
        </div>
    </div>

    <% with $Images %>
        <% include ilateral\SilverStripe\Gallery\Includes\Pagination %>
    <% end_with %>
<% end_if %>
