# OktaSaml

[Okta](http://www.okta.com) is an IDP (Identity Provider) that offers enterprise authentication solutions. Okta works by redirecting visitors to your application to a login page that is hosted by Okta. Upon successful authentication Okta sends a POST request with a SAML payload to a Post Back URL (configured by you at setup). The okta_saml gem helps Ruby on Rails applications communicate with Okta.

It is an engine that adds the following features to your application

1. A new helper: okta_authenticate!
2. Two new routes

    - /saml/init: Outbound to Okta
    - /saml/consume: Handles the Okta POST response

3. Authentication Session

## Installation

Add this line to your application's Gemfile:

    gem 'okta_saml'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install okta_saml

## Usage

The following steps are required when using the okta_saml gem

1. Create an `okta_saml.yml` file in your config directory. A sample okta_saml.yml file has been included with this gem in the config directory with some configuration notes
2. Add a `before_filter` using okta_authenticate! in the controllers where authentication is required


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
