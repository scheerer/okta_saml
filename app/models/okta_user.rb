class OktaUser
  attr_accessor :email

  def initialize(params)
    populate(params)
  end

  def populate(params)
    params.each do |k, v|
      self.send("#{k}=".to_sym, v)
    end
  rescue NoMethodError => error
    p error
  end

  def self.create_from_okta_response(okta_response)
    user = OktaUser.new(okta_response)
  end

end