<footer role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <ul class="nav">
                    <% if $CustomMenu('footer-menu') %>
                        <% loop $CustomMenu('footer-menu') %>
                            <li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                        <% end_loop %>
                    <% else %>
                        <% loop $Menu(1) %>
                            <li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                        <% end_loop %>
                    <% end_if %>
                </ul>
            </div>
            <div class="col-sm text-sm-right">
                <% with $SiteConfig.ContactPage %>
                    <ul class="nav justify-content-end">
                        <% if $PhoneNumber %>
                            <li class="nav-item">
                                <span class="nav-link">$PhoneNumber</span>
                            </li>
                        <% end_if %>
                        <% if $Email %>
                            <li class="nav-item">
                                <a class="nav-link" href="mailto:$Email">$Email</a>
                            </li>
                        <% end_if %>
                    </ul>
                <% end_with %>
            </div>
        </div>
        <p class="text-center">&copy; Copyright {$Now.Year} {$SiteConfig.Title}. All rights reserved. | SilverStripe Bootstrap theme by <a href="http://www.ilateralweb.co.uk" target="_blank">ilateral</a>.</p>
    </div>
</footer>