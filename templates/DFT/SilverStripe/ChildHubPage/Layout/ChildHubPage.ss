<% if $ShowSideBar %>
    <% if $Menu(2) || $SideBarView.Widgets %>
        <% include SideBar %>
    <% end_if %>
<% end_if %>

<div class="content-container col-sm<% if $ShowSideBar && $Menu(2) %> unit size3of4 lastUnit<% end_if %>">
    <article class="content mb-4">
        $Content
    </article>
    
    <% if $PaginatedChildren.exists %>
        <div class="child-list">
            <% if $ShowChildrenAs == "Grid" %>
                <div class="line row units-row child-list">
                    <% loop $PaginatedChildren %>
                        <% include DFT\\SilverStripe\\ChildHubPage\\Includes\\ChildHubGridItem %>
                    <% end_loop %>
                </div>
            <% else %>
                <% loop $PaginatedChildren %>
                    <% include DFT\\SilverStripe\\ChildHubPage\\Includes\\ChildHubListItem %>
                <% end_loop %>
            <% end_if %>
        </div>
        <% with $PaginatedChildren %>
            <% include Pagination %>
        <% end_with %>
    <% end_if %>
    
    $Form
    $CommentsForm
</div>