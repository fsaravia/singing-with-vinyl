Vinyl.configure do |config|
  config.force_access_control = true
  config.api_acl_mode = Vinyl::Configuration::STRATEGY_DESCENDING
  config.warn_on_missing_validators = false
end

require_relative 'validators'
require_relative 'validators_global'
require_relative 'rules'