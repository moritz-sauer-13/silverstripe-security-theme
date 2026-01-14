<form name="{$FormName}" {$FormAttributes} class="flex flex-col gap-4">
  <% if $Message %>
    <div class="rounded-md bg-red-100 p-4">
      <div class="ml-3">
        <h3 class="text-sm font-medium <% if $MessageType == 'bad' %>text-red-800<% end_if %>">{$Message}</h3>
      </div>
    </div>
  <% end_if %>

  <div class="flex flex-col gap-4">
    <% loop $Fields %>
      {$Me.setFieldHolderTemplate('LittleGiant/SilverStripeSecurityTheme/Forms/FieldHolder').FieldHolder}
    <% end_loop %>
  </div>
  <div class="flex flex-col gap-4">
    <% loop $Actions %>
      {$Me.addExtraClass('btn-primary').setTitle('Jetzt einloggen')}
    <% end_loop %>
  </div>
</form>
