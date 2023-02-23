# frozen_string_literal: true

class ProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[show]

  def index; end

  def show; end

  private

  def set_user
    @user = User.find_by(id: params[:id])
    return if @user

    redirect_to root_path
  end
end
