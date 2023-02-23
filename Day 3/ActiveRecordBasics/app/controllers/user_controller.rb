class UserController < ApplicationController
  def index
    user = User.create()
  end

  # http://localhost:3000/user/my_action
  def my_action
  end
end
