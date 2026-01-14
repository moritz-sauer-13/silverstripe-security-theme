<div class="flex gap-3">
  <div class="flex h-6 shrink-0 items-center">
    <div class="group grid size-4 grid-cols-1">
      <input id="$ID" type="checkbox" name="$Name" />
      <svg viewBox="0 0 14 14" fill="none" class="pointer-events-none col-start-1 row-start-1 size-3.5 self-center justify-self-center stroke-white group-has-disabled:stroke-gray-950/25">
        <path d="M3 8L6 11L11 3.5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="opacity-0 group-has-checked:opacity-100" />
        <path d="M3 7H11" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="opacity-0 group-has-indeterminate:opacity-100" />
      </svg>
    </div>
  </div>
  <div class="text-sm/6">
    <label for="$ID"><%t SilverStripe\Security\Member.KEEP_ME_SIGNED_IN count=$LoginTokenExppiryDays %></label>
    <p id="comments-description" class="text-md"><%t SilverStripe\Security\Member.KEEP_ME_SIGNED_IN_TOOLTIP count=$LoginTokenExppiryDays %></p>
  </div>
</div>
