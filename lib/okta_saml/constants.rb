if defined?(Rails)
  saml = begin
    YAML::load_file(Rails.root.join("config/okta_saml.yml").to_s)
  rescue Errno::ENOENT
    YAML::load_file(File.expand_path('../../generators/templates/okta_saml.yml', __FILE__).to_s)
  end
    SAML_SETTINGS = {
    :idp_sso_target_url => saml[Rails.env]['idp_sso_target_url'],
    :idp_cert_fingerprint => saml[Rails.env]['idp_cert_fingerprint']
  }
end