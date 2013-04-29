module OktaSaml
  module SessionsHelper
    def sign_in(user)
      cookies.signed[:remember_token] = {
        :value => user.email,
        :expires => 120.minutes.from_now
      }
      current_user = user
    end

    def signed_in?
      p "Check Sign In"
      !current_user.nil?
    end

    def current_user=(user)
      @current_user = user
    end

    def current_user
      @current_user ||= user_from_remember_token
    end

    def destroy
      sign_out
    end

    def sign_out
      cookies.delete(:remember_token)
      current_user = nil
    end

    private
      def user_from_remember_token
        OktaUser.retrieve_from_cookie(remember_token)
      end

      def remember_token
        cookies.signed[:remember_token]
      end
  end
end