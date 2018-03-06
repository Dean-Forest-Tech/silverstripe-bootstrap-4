<nav class="col navbar navbar-expand-lg navbar-light navbar-main">  
	<div class="collapse navbar-collapse" id="MainNav">
	  <ul class="navbar-nav ml-sm-auto">
			<% if $CustomMenu('main-menu') %>
				<% loop $CustomMenu('main-menu') %>
					<li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
				<% end_loop %>
			<% else %>
				<% loop $Menu(1) %>
					<li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
				<% end_loop %>
			<% end_if %>
	  </ul>
	</div>
</nav>