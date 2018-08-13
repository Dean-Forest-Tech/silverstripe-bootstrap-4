<% loop $Options %>
	<div $Up.addExtraClass("form-check").AttributesHTML>
		<input id="$ID" class="radio form-check-input" name="$Name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> />
		<label class="form-check-label" for="$ID">
			$Title
		</label>
	</div>
<% end_loop %>