<%-- NOTE: Before including this, you will need to wrap the include in a with block  --%>

<% if $MoreThanOnePage %>
	<ul class="pagination">
		<% if $NotFirstPage %>
			<li class="page-item">
				<a class="page-link previous bg-primary text-white" aria-label="Previous" href="{$PrevLink}">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
		<% end_if %>

		<% loop $PaginationSummary(4) %>
			<li class="page-item <% if not $Link || $CurrentBool %>disabled<% end_if %>">
				<% if $Link %>
					<a class="page-link<% if $CurrentBool %> bg-success<% else %> bg-primary<% end_if %> text-white" href="$Link">$PageNum</a>
				<% else %>
					<span class="bg-secondary text-white">...</span>
				<% end_if %>
			</li>
		<% end_loop %>

		<% if $NotLastPage %>
			<li class="page-item">
				<a class="page-link next bg-primary text-white" href="{$NextLink}" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		<% end_if %>
	</ul>
<% end_if %>
