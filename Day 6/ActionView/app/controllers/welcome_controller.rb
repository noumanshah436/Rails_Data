class WelcomeController < ApplicationController
  # layout 'header'

  def index
    # redirect_to :form
    # redirect_to action: 'form'
    @date = Date.today
  end

  # http://localhost:3000/form
  def form

  end

  def new
  end

  def create
    puts "params"
    puts params 
  end

end
