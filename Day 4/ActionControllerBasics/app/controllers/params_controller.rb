class ParamsController < ApplicationController

  # http://localhost:3000/params/new
  def new
  end

  def create
    puts "params:"
    p params
    p params[:id]
    p params[:client]
    p params[:client][:name]
    p params[:controller]
    p params[:action]

    # Permitted Scalar Values
    puts "before"
    p params.permit(:id )
    p params.permit(client: {} )
    p params.require(:client).permit!
    puts "after"
  end

  def index
  end

  def get_params

  end
end

# <ActionController::Parameters
# {
#   "authenticity_token"=>"V/EdwugpjvXEUCdb7Xe/9fr8ZsFuWy1Muot8TUV2QeaQlog5iqXWD96SOrA631bHAA88TPjfNcZ5hM5Oi7hqqQ==",
#   "id"=>"23",
#   "client"=>{"name"=>"Acme", "phone"=>"12345", "address"=>{"postcode"=>"12345", "city"=>"Carrot City"}},
#   "controller"=>"params",
#   "action"=>"create"
# }

# permitted: false>
