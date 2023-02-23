class User < ApplicationRecord

  # to get prople we are following
  has_many :followed_users,
            class_name: "Follow",
            foreign_key: "follower_id",
            dependent: :destroy

  # user.followees    get people that         user is following
  has_many :followees, through: :followed_users , dependent: :destroy


  ###################
  # to get people that are follwing us
  # for the users that are following this user

  has_many :following_users,
            class_name: "Follow",
            foreign_key: "followee_id",
            dependent: :destroy

  # user.followees    get people that         user is following
  has_many :followers, through: :following_users , dependent: :destroy


end
