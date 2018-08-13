<div id="$HolderID" class="field form-group<% if $extraClass %> $extraClass<% end_if %>">
	<% if $Title %><label class="left">$Title</label><% end_if %>
	$Field
	<% if $RightTitle %><label class="right">$RightTitle</label><% end_if %>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</div>
