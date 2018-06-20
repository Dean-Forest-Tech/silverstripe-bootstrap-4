<% require css("i-lateral/silverstripe-gallery: client/dist/css/gallery.min.css") %>

<% include Banner %>

<% if $ShowSideBar && $Menu(2).exists %>
	<% include SideBar %>
<% end_if %>

<div class="content-container col-sm">
	<article class="gallery-hub">
		<div class="content">$Content</div>

		<% if $PaginatedGalleries.exists %>
			<div class="gallery-thumbnails">
				<div class="row line">
					<% loop $PaginatedGalleries %>
						<div class="unit size1of4 col-lg-2 col-md-3 col-6 <% if $MultipleOf(4) %>lastUnit<% end_if %>">
							<figure>
								<a href="{$Link}" title="{$Title}">
									<img
										class="gallery-thumbnail img-fluid img-responsive w-100"
										data-src="{$GalleryThumbnail.Link}"
										src="{$GalleryThumbnail.MicroImage.Link}"
										alt="{$GalleryThumbnail.Title}"
									/>
									<% if $Top.ShowImageTitles %>
										<figcaption>$Title</figcaption>
									<% end_if %>
								</a>
							</figure>
						</div>
					<% end_loop %>
				</div>
			</div>

			<% with $PaginatedGalleries %>
				<% include Pagination %>
			<% end_with %>
		<% end_if %>
	</article>
</div>