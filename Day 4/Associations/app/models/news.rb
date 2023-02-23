# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class News < ApplicationRecord
  has_many :comments, as: :commentable
end
