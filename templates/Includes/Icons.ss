<% if $SiteConfig.Icon %>
    <link rel="shortcut icon" href="$SiteConfig.Icon.FocusFill(16,16).URL">
    <link rel="icon" sizes="16x16" href="$SiteConfig.Icon.FocusFill(16,16).URL" />
    <link rel="icon" sizes="32x32" href="$SiteConfig.Icon.FocusFill(32,32).URL" />
    <link rel="icon" sizes="48x48" href="$SiteConfig.Icon.FocusFill(48,48).URL" />
    <link rel="icon" sizes="64x64" href="$SiteConfig.Icon.FocusFill(64,64).URL" />
    <link rel="icon" sizes="128x128" href="$SiteConfig.Icon.FocusFill(128,128).URL" />
    <link rel="icon" sizes="196x196" href="$SiteConfig.Icon.FocusFill(196,196).URL" />

    <link rel="apple-touch-icon" href="$SiteConfig.Icon.FocusFill(60,60).URL" />
    <link rel="apple-touch-icon" sizes="76x76" href="$SiteConfig.Icon.FocusFill(76,76).URL">
    <link rel="apple-touch-icon" sizes="120x120" href="$SiteConfig.Icon.FocusFill(120,120).URL">
    <link rel="apple-touch-icon" sizes="152x152" href="$SiteConfig.Icon.FocusFill(152,152).URL">
<% else %>
    <link rel="shortcut icon" href="themes/bootstrap/icons/icon-16.png">
    <link rel="icon" sizes="16x16" href="themes/bootstrap/icons/icon-16.png" />
    <link rel="icon" sizes="32x32" href="themes/bootstrap/icons/icon-32.png" />
    <link rel="icon" sizes="48x48" href="themes/bootstrap/icons/icon-48.png" />
    <link rel="icon" sizes="64x64" href="themes/bootstrap/icons/icon-64.png" />
    <link rel="icon" sizes="128x128" href="themes/bootstrap/icons/icon-128.png" />
    <link rel="icon" sizes="196x196" href="themes/bootstrap/icons/icon-196.png" />

    <link rel="apple-touch-icon" href="themes/bootstrap/icons/icon-60.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="themes/bootstrap/icons/icon-76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="themes/bootstrap/icons/icon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="themes/bootstrap/icons/icon-152.png">
<% end_if %>