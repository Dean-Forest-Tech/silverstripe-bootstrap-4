<div id="$Name" class="field form-group<% if $extraClass %> $extraClass<% end_if %>">
	<% if $Title %><label class="left" for="$ID">$Title</label><% end_if %>
	$addExtraClass('form-control').Field
	<% if $RightTitle %><span id="{$Name}_right_title" class="right-title">$RightTitle</span><% end_if %>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
</div>
