# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(email: 'syed@gmail.com', name: 'Syed', username: 'Syed', age: 20, gender: 1, password: 'nouman',
                 confirmed_at: DateTime.now)

t1 = Topic.new(title: 'Devsinc', desc: 'All about devsinc', user_id: u1.id)
t1.picture.attach(io: File.open("#{Rails.root}/app/assets/images/default2.jpg"), filename: 'default2.jpg')
t1.save
