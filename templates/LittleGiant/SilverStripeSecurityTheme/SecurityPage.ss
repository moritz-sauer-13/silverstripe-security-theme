<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
  <% base_tag %>
  $MetaTags
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link rel="canonical" href="$CanonicalURL"/>
  <link rel="icon" type="image/x-icon" href="/favicon.ico">
  <link rel="apple-touch-icon" href="/favicon.png">
</head>
<body>
<% include Header %>
<div class="w-full min-h-[calc(100svh-(var(--spacing)*25))] py-5 flex items-center justify-center"
     <% if $SiteConfig.LoginImage %>style="background-image: url($SiteConfig.LoginImage.FocusFill(2560,1440).Link); background-position: $SiteConfig.LoginImage.FocusPosition; background-repeat: no-repeat; background-size: cover"<% end_if %>>
  <div class="bg-white max-w-lg dark:bg-gray-800 dark:text-white p-5 md:p-8 lg:p-10 rounded-2xl shadow-lg flex flex-col gap-4">
    <h1 class="text-4xl font-semibold">{$Title}</h1>
    <% if $Form %>
      <% with $Form %>
        <% include LittleGiant/SilverStripeSecurityTheme/Form %>
      <% end_with %>
    <% end_if %>
  </div>
</div>
<script>
  document.addEventListener('DOMContentLoaded', () => {
    const emailField = document.querySelector('#MemberLoginForm_LoginForm_Email');
    const lostPasswordEmailField = document.querySelector('#LostPasswordForm_lostPasswordForm_Email');
    const passwordField = document.querySelector('#MemberLoginForm_LoginForm_Password');
    if(emailField){
      emailField.setAttribute('placeholder', 'max.mustermann@mail.de');
    }
    if(lostPasswordEmailField){
      lostPasswordEmailField.setAttribute('placeholder', 'max.mustermann@mail.de');
    }
    if(passwordField){
      passwordField.setAttribute('placeholder', '****************');
      const changePasswordInputTypeToggle = document.querySelector('#Password i');
      if(changePasswordInputTypeToggle){
        changePasswordInputTypeToggle.addEventListener('click', () => {
          if (passwordField.type === 'password') {
            passwordField.type = 'text';
            changePasswordInputTypeToggle.classList.remove('bi-eye');
            changePasswordInputTypeToggle.classList.add('bi-eye-slash');
          } else {
            passwordField.type = 'password';
            changePasswordInputTypeToggle.classList.remove('bi-eye-slash');
            changePasswordInputTypeToggle.classList.add('bi-eye');
          }
        });
      }
    }
  })
</script>
</body>
</html>
