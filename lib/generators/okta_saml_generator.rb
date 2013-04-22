require 'rails/generators'

class OktaSamlGenerator < Rails::Generators::Base
  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

  def generate_config_file
    copy_file 'okta_saml.yml', 'config/okta_saml.yml'
  end
end