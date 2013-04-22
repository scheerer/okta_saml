require "okta_saml/version"

module OktaSaml
  if defined?(Rails) && Rails::VERSION::MAJOR == 3
    require "okta_saml/engine"
  end
end
