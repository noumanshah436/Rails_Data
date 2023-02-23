class CookiesManagementController < ApplicationController
  def index
  end

  # http://localhost:3000/cookies_management/create_cookie
  # http://localhost:3000/cookies_management/show_cookie
  # http://localhost:3000/cookies_management/destroy_cookie

  def create_cookie
    cookies[:user_id] = "Nouman this is a cookie"
  end

  def destroy_cookie
    cookies.delete(:user_id)
  end

  def show_cookie
  end

  # ********************

  def set_encrypted_cookie
    cookies.encrypted[:expiration_date] = Date.tomorrow # => Thu, 20 Mar 2014
    redirect_to action: 'read_encrypted_cookie'
  end

  def read_encrypted_cookie
    # cookies.encrypted[:expiration_date] # => "2014-03-20"
  end

  def destroy_encrypted_cookie
    cookies.delete(:expiration_date)
  end
end
