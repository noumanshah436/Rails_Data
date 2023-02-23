class SessionManagementController < ApplicationController

  # Sessions
  # http://localhost:3000/session_management/index
  # http://localhost:3000/session_management/show
  # http://localhost:3000/session_management/destroy

  def index
    # To store something in the session, just assign it to the key like a hash:
    session[:current_user_id] = "Nouman"
  end

  def destroy
    # delete session
    session[:current_user_id] = nil
  end

  def show
    # show session
    @session_data= session[:current_user_id]
  end

  # ************************************
  # Flash

  # run in this order to understand
  # http://localhost:3000/session_management/new_flash
  # http://localhost:3000/session_management/show_flash
  # http://localhost:3000/session_management/next_request

  def new_flash
    flash[:notice] = "You have successfully logged out."
    flash[:hey] = "Hey this is a flash"
    # redirect_to session_management_show_flash_path
  end

  def show_flash
  end

  def next_request 
  end

  # ******************************




end


