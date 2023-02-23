class WelcomeController < ApplicationController
  def send_email
    PostMailer.with(user: "Nouman", post: "this is my first post").post_created.deliver_now
  end
end
