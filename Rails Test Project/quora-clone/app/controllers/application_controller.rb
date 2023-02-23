# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # def after_sign_in_path_for(_resource)
  #    home_index_url
  # end

  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_back(fallback_location: root_path)
  end
end
