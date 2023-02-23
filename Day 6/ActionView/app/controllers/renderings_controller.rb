class RenderingsController < ApplicationController
  def index
    # render plain: "OK"
    # render html: helpers.tag.strong('Not Found')

    @grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
    render json: @grades
    # render xml: @grades

    # render :file => 'public/404.html', :status => :not_found, :layout => false

    # render status: 500
  end

  def show
  end

  def hey
  end
end
