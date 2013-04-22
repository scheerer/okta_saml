require 'rubygems'
require 'ruby-saml'

class ActionController::Base
  before_filter :authenticate!
  def authenticate!
    session[:attempted_path] = request.fullpath
    unless defined?(current_user) && !current_user.nil?
      redirect_to saml_init_path
    end
  end
end

module OktaSaml
  class Engine < Rails::Engine
    def initialize
      require "okta_saml/constants"
      Rails.application.config.session_store :active_record_store, :key => '_my_key', :domain=> :all
    end
  end
end