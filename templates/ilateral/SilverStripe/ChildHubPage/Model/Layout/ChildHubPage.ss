<% include Banner %>

<% if $ShowSideBar %>
    <% if $Menu(2) || $SideBarView.Widgets %>
        <% include SideBar %>
    <% end_if %>
<% end_if %>

<div class="content-container col-sm<% if $ShowSideBar && $Menu(2) %> unit size3of4 lastUnit<% end_if %>">
    <article>
        <div class="content">$Content</div>
    </article>
    
    <% if $PaginatedChildren.exists %>
        <div class="child-list">
            <% if $ShowChildrenAs == "Grid" %>
                <div class="line row units-row child-list">
                    <% loop $PaginatedChildren %>
                        <% include ilateral\\SilverStripe\\ChildHubPage\\ChildHubGridItem %>
                    <% end_loop %>
                </div>
            <% else %>
                <% loop $PaginatedChildren %>
                    <% include ilateral\\SilverStripe\\ChildHubPage\\ChildHubListItem %>
                <% end_loop %>
            <% end_if %>
        </div>
        <% with $PaginatedChildren %>
            <% include ilateral\\SilverStripe\\ChildHubPage\\Pagination %>
        <% end_with %>
    <% end_if %>
    
    $Form
    $CommentsForm
</div>