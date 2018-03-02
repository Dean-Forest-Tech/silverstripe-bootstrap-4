<% require css("i-lateral/silverstripe-gallery: node_modules/tingle.js/dist/tingle.min.css") %>
<% require css("i-lateral/silverstripe-gallery: client/dist/css/gallery.min.css") %>
<% require javascript("i-lateral/silverstripe-gallery: node_modules/tingle.js/dist/tingle.min.js") %>
<% require javascript("i-lateral/silverstripe-gallery: client/dist/javascript/gallery.min.js") %>

<div class="row">
    <% if $ShowSideBar && $Menu(2).exists %>
        <aside class="col-sm col-sm-3" role="complementary">
			<% include SideBar %>
        </aside>
    <% end_if %>

    <div class="content-container col-sm-12 <% if $ShowSideBar && $Menu(2).exists %>col-md-9<% end_if %>">
        <article class="gallery-page">
            <div class="content">$Content</div>
            $Gallery
        </article>

        $Form
        $PageComments
    </div>
</div>