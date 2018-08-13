<$Tag class="CompositeField $extraClass <% if $ColumnCount %>multicolumn row<% end_if %>" id="$HolderID">
	<% if $Tag == 'fieldset' && $Legend %>
		<legend>$Legend</legend>
	<% end_if %>

	<% loop $FieldList %>
		<% if $ColumnCount %>
			<div class="col-md column-{$ColumnCount} $FirstLast">
				$SmallFieldHolder
			</div>
		<% else %>
			$SmallFieldHolder
		<% end_if %>
	<% end_loop %>
</$Tag>
