Rails.application.routes.draw do
  get '/saml/init' => 'saml#init'
  get '/saml/logout' => 'saml#logout'
  match '/saml/consume' => 'saml#consume'
end