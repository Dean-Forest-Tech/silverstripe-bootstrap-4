<% require css("i-lateral/silverstripe-gallery: client/dist/css/gallery.min.css") %>

<div class="row">
	<% if $ShowSideBar && $Menu(2).exists %>
		<aside class="col-sm col-sm-3" role="complementary">
			<% include SideBar %>
		</aside>
	<% end_if %>

	<div class="content-container col-sm-12 <% if $ShowSideBar && $Menu(2).exists %>col-md-9<% end_if %>">
		<article class="gallery-hub">
			<div class="content">$Content</div>

			<% if $PaginatedGalleries.exists %>
				<div class="gallery-thumbnails">
					<div class="row line">
						<% loop $PaginatedGalleries %>
							<div class="unit size1of4 col-lg-2 col-md-3 col-xs-6 <% if $MultipleOf(4) %>lastUnit<% end_if %>">
								<figure>
									<a href="{$Link}" title="{$Title}">
										<img
											class="gallery-thumbnail img-fluid img-responsive"
											src="{$GalleryThumbnail.Link}"
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
</div>