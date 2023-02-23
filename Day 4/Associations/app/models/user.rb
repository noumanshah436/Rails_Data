# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  coach_id   :integer
#
class User < ApplicationRecord
  has_many :players, class_name: "User",  foreign_key: "coach_id"
  belongs_to :coach, class_name: "User", optional: true
end

# In Self join association one model has relation with itself.
# For example one user table can have list of all coach and player.
# One coach can train many players. We will represent the association as:


# rails g model User name:string

# run migration:
# add_column :users , :coach_id, :integer

# class User < ActiveRecord::Base
#   has_many :players, :class_name => "User",  :foreign_key => "coach_id"
#   belongs_to :coach, :class_name => "User"
# end


# user1 = User.create(name:"Player1")
# user2 = User.create(name:"Player2")
# user3 = User.create(name:"Player3")

# coach1 = User.create(name:"coach1")

# user1.coach = coach1
# user1.save

# user2.coach = coach1
# user2.save

# user3.coach = coach1
# user3.save


# coach1.players

# user1.coach
