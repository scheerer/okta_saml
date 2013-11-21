class SamlController < ApplicationController
  include OktaSaml::SessionHelper, OktaApplicationHelper

  skip_before_filter :okta_authenticate!, :okta_logout

  def init
    redirect_to(idp_login_request_url(request))
  end

  def consume
    response = idp_response(params)
    response.settings = saml_settings(request)
    if response.is_valid?
      sign_in(OktaUser.new({:email => response.name_id, :attributes => response.attributes, :issuer => response.issuer}))
      redirect_to redirect_url
    else
      render :text => "Failure"
    end
  end

  private

  def redirect_url
    session[:redirect_url]
  end

  # Rails override to handle unverified post requests from Okta
  def handle_unverified_request
  end

end