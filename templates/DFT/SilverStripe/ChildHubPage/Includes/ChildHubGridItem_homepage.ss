<div class="unit size1of3 unit-33 col-12 col-md-6 col-lg-3 mb-4 child $EvenOdd child-{$Pos}">
    <div class="h-100">
        <% if $FeaturedImage.exists %>
            <p class="child-image">
                <a href="{$Link}">
                    $FeaturedImage.Fill(600,600)
                </a>
            </p>
        <% end_if %>
        <div>
            <h3>
                <a href="{$Link}">{$Title}</a>
            </h3>

            <p>$Content.FirstParagraph</p>
            
            <p>
                <a class="btn btn-primary w-100" href="{$Link}">
                    <%t ChildHubPage.More "More" %>
                </a>
            </p>
        </div>
    </div>
</div>