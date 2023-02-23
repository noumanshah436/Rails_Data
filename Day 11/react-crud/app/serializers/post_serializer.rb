class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :image , :created_at, :updated_at

  def image
    object.image.service_url
  end
end
