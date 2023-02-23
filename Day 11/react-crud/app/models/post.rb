class Post < ApplicationRecord
  default_scope { order(id: :desc) }

  validates :title , presence: true
  validates :body , presence: true
  validates :image, content_type:  ['image/jpeg','image/png','image/jpg'], on: %i[create update]

  has_one_attached :image
  after_commit :add_default_image, on: %i[create update]

  def image_varient
    image.variant( resize:"500x500!").processed
  end

  # note used as we validate
  def add_default_image
    unless image.attached?
      image.attach(
        io:File.open(Rails.root.join('app', 'assets', 'images', 'default_image.jpg' )  ),
        filename: 'default_image.jpg',
        content_type: 'image/jpg'
      )
    end
  end

end
