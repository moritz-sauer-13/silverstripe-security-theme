<% if $Type == 'hidden' %>
  {$Field}
<% else %>
  <div id="{$Name}" class="<% if $Message %> has-message<% end_if %>">
    <% if $Type == 'checkbox' %>
      <% include LittleGiant/SilverStripeSecurityTheme/Forms/Fields/Checkbox %>
    <% else_if $Type == 'dropdown' %>
      <% include LittleGiant/SilverStripeSecurityTheme/Forms/Fields/Select %>
      <label for="{$ID}">{$Title}</label>
    <% else %>
      <label for="{$ID}">{$Title}</label>
      {$Field}
    <% end_if %>

    <% if $Description %>
      <p>{$Description}</p>
    <% end_if %>
  </div>
<% end_if %>
