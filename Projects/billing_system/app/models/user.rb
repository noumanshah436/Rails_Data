class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable


  after_create :add_default_avatar, on: :create

  has_one_attached :avatar
  validates :avatar , content_type:  ['image/jpeg','image/png','image/jpg']

  def avatar_thumbnail
    avatar.variant( resize:"150x150!").processed
  end

  def username
    return email.split('@')[0].capitalize
  end



  private

  def add_default_avatar
    unless avatar.attached?
      avatar.attach(
        io:File.open(Rails.root.join('app', 'assets', 'images', 'default_profile.jpg' )  ),
        filename: 'default_profile.jpg',
        content_type: 'image/jpg'
      )
    end
  end

end
