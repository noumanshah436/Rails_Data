class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #

  # http://localhost:3000/rails/mailers
  def post_created
    @user = params[:user]
    @post = params[:post]
    @greeting = "Hi"

    # attachments['devsinc.jpg'] = File.read('app/assets/images/devsinc.jpg')
    mail(
      from: "Owner <hello042hello@gmail.com>",
      to: "anasdx1590@gmail.com",
      subject: "New post created"
    )
    # mail to: "to@example.org", cc: User.all.pluck(:email)
  end
end
