class ProductSerializer < ActiveModel::Serializer
  attributes :id,:name, :price, :size, :description, :model, :active, :quantity, :images

  def images
    list = []
    (0...object.images.count).each_with_index do |image, index|
      list.push(object.images[index].service_url)
    end
    return list
  end
end
