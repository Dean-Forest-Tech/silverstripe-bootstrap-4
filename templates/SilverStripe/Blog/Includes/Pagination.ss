<%-- NOTE: Before including this, you will need to wrap the include in a with block  --%>

<% if $MoreThanOnePage %>
	<ul class="pagination">
		<% if $NotFirstPage %>
			<li class="page-item">
				<a class="page-link previous" aria-label="Previous" href="{$PrevLink}">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
		<% end_if %>

		<% loop $PaginationSummary(4) %>
			<li class="page-item <% if not $Link || $CurrentBool %>disabled<% end_if %>">
				<% if $Link %>
					<a class="page-link" href="$Link">$PageNum</a></li>
				<% else %>
					<span>...</span></li>
				<% end_if %>
			</li>
		<% end_loop %>

		<% if $NotLastPage %>
			<li class="page-item">
				<a class="page-link next" href="{$NextLink}" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		<% end_if %>
	</ul>
<% end_if %>
