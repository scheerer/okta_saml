Rails.application.routes.draw do
  get '/saml/init' => 'saml#init'
  match '/saml/consume', to: 'saml#consume', via: [:get, :post]
end