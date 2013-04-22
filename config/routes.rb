Rails.application.routes.draw do
  get '/saml/init' => 'saml#init'
  match '/saml/consume' => 'saml#consume'
end