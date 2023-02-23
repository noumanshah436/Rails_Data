class Product < ApplicationRecord
  default_scope {  order(id: :desc)}
  has_many_attached :images
  belongs_to :user

  validates :name, :price, :size, :quantity , :color, :user, presence: true
  validates :images, attached: true, content_type:  ['image/jpeg','image/png','image/jpg'], on: %i[create update]
  validates :name, length: { in: 1..35 }
  validates :size, length: { in: 1..25 }
  validates :color, length: { in: 1..25 }
  validates :model, length: { in: 0..25 }
  validates :description, length: { maximum: 250 }

  # before_save :resize_image

  # def resize_image
  #   puts "images"
  #   self.images.each do |image|

  #     byebug
  #     image.variant(resize_to_limit: [300, 300]).processed.url
  #     # self.images[i].resize('300x300!')
  #   end
  #   # unless images.attached?
  #   #   avatar.attach(
  #   #     io:File.open(Rails.root.join('app', 'assets', 'images', 'default_profile.jpg' )  ),
  #   #     filename: 'default_profile.jpg',
  #   #     content_type: 'image/jpg'
  #   #   )
  #   # end

  # end

  def thumbnail(index)
    return self.images[index].variant(resize: '300x300!')
  end

  def banner(index)
    return self.images[index].variant(resize: '1200x300!')
  end

end
