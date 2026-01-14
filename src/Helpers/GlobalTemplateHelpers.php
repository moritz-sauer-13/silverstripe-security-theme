<?php

namespace LittleGiant\SilverStripeSecurityTheme\Helpers;

use SilverStripe\Security\RememberLoginHash;
use SilverStripe\Security\Security;
use SilverStripe\View\TemplateGlobalProvider;

/**
 * Class GlobalTemplateHelpers
 * @package LittleGiant\SilverStripeSecurityTheme\Helpers
 */
class GlobalTemplateHelpers implements TemplateGlobalProvider
{
    /**
     * @return array
     */
    public static function get_template_global_variables(): array
    {
        return [
            'SecurityLogo' => 'getSecurityLogo',
            'LoginTokenExppiryDays' => 'getLoginTokenExppiryDays',
        ];
    }

    /**
     * @desc Return the logo URL
     * @return null|string
     */
    public static function getSecurityLogo(): ?string
    {
        $config = Security::config();

        if ($logo = $config->logo) {
            return $logo;
        }

        return null;
    }

    public static function getLoginTokenExppiryDays(): int
    {
        return RememberLoginHash::config()->uninherited('token_expiry_days');
    }
}
