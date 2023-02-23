# frozen_string_literal: true

class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true
  belongs_to :user

  enum status: { like: 0, dislike: 1 }
  validates :user_id, uniqueness: { scope: %i[votable_type votable_id] }
end
