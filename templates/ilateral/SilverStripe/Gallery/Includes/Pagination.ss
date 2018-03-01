<%-- NOTE: Before including this, you will need to wrap the include in a with block  --%>

<% if $MoreThanOnePage %>
	<ul class="pagination">
		<% if $NotFirstPage %>
			<li><a class="prev" href="{$PrevLink}">&lt;</a></li>
		<% end_if %>

		<% loop $PaginationSummary(4) %>
			<% if $CurrentBool %>
				<li><span>$PageNum</span></li>
			<% else %>
				<% if $Link %>
					<li><a href="$Link">$PageNum</a></li>
				<% else %>
					<li><span>...</span></li>
				<% end_if %>
			<% end_if %>
		<% end_loop %>

		<% if $NotLastPage %>
			<li><a class="next" href="{$NextLink}">&gt;</a></li>
		<% end_if %>
	</ul>
<% end_if %>
