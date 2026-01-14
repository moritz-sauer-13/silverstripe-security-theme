<form name="{$FormName}" {$FormAttributes}>
  <% if $Message || $ShowSuccessMessage %>
    <div class="rounded-md bg-red-50 p-4">
      <div class="ml-3">
        <h3 class="text-sm font-medium <% if $MessageType == 'bad' %>text-red-800<% end_if %>">{$Message}</h3>
      </div>
    </div>
  <% end_if %>

  <fieldset class="flex flex-col gap-4">
    <div>
      {$Fields}
    </div>
    <div>
      {$Actions}
    </div>
  </fieldset>
</form>
