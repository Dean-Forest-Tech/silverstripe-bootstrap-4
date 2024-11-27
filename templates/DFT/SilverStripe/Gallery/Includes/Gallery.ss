<% if $Images %>
    <div class="gallery-thumbnails">
        <div class="row line">
            <% loop $Images %>
                <% with $GalleryThumbnail %>
                    <div class="col-lg-2 col-md-3 col-6 unit size1of5 <% if $MultipleOf(5) %>lastUnit<% end_if %>">
                        <figure>
                            <img
                                class="gallery-thumbnail img-fluid w-100 img-responsive"
                                data-src="{$Link}"
                                src="{$MicroImage.Link}"
                                alt="{$Title}"
                                data-url="{$Up.GalleryImage.Link}"
                            />
                            <% if $Top.ShowImageTitles %>
                                <figcaption>$Title</figcaption>
                            <% end_if %>
                        </figure>
                    </div>
                <% end_with %>
            <% end_loop %>
        </div>
    </div>

    <% with $PaginatedImages %>
        <% include Pagination %>
    <% end_with %>
<% end_if %>
