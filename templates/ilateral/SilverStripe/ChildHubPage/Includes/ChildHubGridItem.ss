<div class="unit size1of3 mb-4 unit-33 col-sm-6 col-lg-4 child $EvenOdd child-{$Pos}">
    <h2>
        <a href="{$Link}">{$Title}</a>
    </h2>
    <% if $FeaturedImage.exists %>
        <p>
            <a href="{$Link}">
                $FeaturedImage.Fill(330,330)
            </a>
        </p>
    <% end_if %>

	<p>$Content.FirstParagraph</p>
    
    <p class="text-center">
        <a class="btn btn-primary" href="{$Link}">
            <%t ChildHubPage.More "More" %>
        </a>
    </p>
</div>
