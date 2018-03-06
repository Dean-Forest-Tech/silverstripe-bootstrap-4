<% require css("i-lateral/silverstripe-gallery: node_modules/tingle.js/dist/tingle.min.css") %>
<% require css("i-lateral/silverstripe-gallery: client/dist/css/gallery.min.css") %>
<% require javascript("i-lateral/silverstripe-gallery: node_modules/tingle.js/dist/tingle.min.js") %>
<% require javascript("i-lateral/silverstripe-gallery: client/dist/javascript/gallery.min.js") %>

<% include Banner %>

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