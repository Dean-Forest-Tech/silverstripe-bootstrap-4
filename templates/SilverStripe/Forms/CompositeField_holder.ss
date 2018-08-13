<$Tag class="CompositeField $extraClass <% if $ColumnCount %>multicolumn row<% end_if %>" id="$HolderID">
	<% if $Tag == 'fieldset' && $Legend %>
		<legend>$Legend</legend>
	<% end_if %>

	<% loop $FieldList %>
		<% if $Up.ColumnCount %>
			<div class="col-md column-{$Up.ColumnCount} $FirstLast">
				$FieldHolder
			</div>
		<% else %>
			$FieldHolder
		<% end_if %>
	<% end_loop %>
</$Tag>
