<% require css("dft/silverstripe-gallery: node_modules/tingle.js/dist/tingle.min.css") %>
<% require css("dft/silverstripe-gallery: client/dist/css/gallery.min.css") %>
<% require javascript("dft/silverstripe-gallery: node_modules/tingle.js/dist/tingle.min.js") %>
<% require javascript("dft/silverstripe-gallery: client/dist/javascript/gallery.min.js") %>

<% if $ShowSideBar && $Menu(2).exists %>
    <% include SideBar %>
<% end_if %>

<div class="content-container col-sm">
    <article class="gallery-page">
        <div class="content">$Content</div>
        $Gallery
    </article>

    $Form
    $PageComments
</div>