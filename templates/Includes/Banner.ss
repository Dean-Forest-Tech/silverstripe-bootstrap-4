<div class="row">
        <% if $MapEmbed %>
            <div class="row map-row">
                <div class="embed-responsive embed-responsive-map">
                    $MapEmbed.RAW
                </div>
            </div>
        <% else_if $FeaturedImage.exists() %>
            <div class="row">
                <p class="banner-image"><img class="img-fluid" src="$FeaturedImage.Fill(1200,500).URL" alt="$FeaturedImage.Title"></p>
            </div>	
        <% end_if %>
        <div class="col">
            <h1<% if $ClassName == 'HomePage' %> class="text-center"<% end_if %>>
                <% if $ClassName == 'HomePage' %><span><% end_if %>
                <% if $ArchiveYear %>
                    <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
                    <% if $ArchiveDay %>
                        $ArchiveDate.Nice
                    <% else_if $ArchiveMonth %>
                        $ArchiveDate.format('F, Y')
                    <% else %>
                        $ArchiveDate.format('Y')
                    <% end_if %>
                <% else_if $CurrentTag %>
                    <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title
                <% else_if $CurrentCategory %>
                    <%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title
                <% else %>
                    $Title
                <% end_if %>
                <% if $ClassName == 'HomePage' %></span><% end_if %>
            </h1>
        </div>
        <% include BreadCrumbs %>
    </div>
<% if $ClassName != 'HomePage' %>
    <hr />
<% end_if %>