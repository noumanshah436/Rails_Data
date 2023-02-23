class PagesController < ApplicationController
  def home
    @messages = Message.last(5)
    puts "messages:"
    p @messages
    @message = Message.new
  end
end
