# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "hello"
20.times do |i|
  puts "hye"
  post = Product.new(name: "Product #{i}", price: 12000,color:"black", size: "1-3 3-6", model:"model", active:true, quantity:100 , description:"description #{i}"  )
  post.images.attach(
        io: File.open(Rails.root.join('app', 'assets', 'images', 'default1.png')),
        filename: 'default1.png',
        content_type: 'image/png'
      )
      post.save!
end


# :name, :price, :size, :description, :model, :active, :quantity, :color

