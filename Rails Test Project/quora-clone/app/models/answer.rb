# frozen_string_literal: true

class Answer < ApplicationRecord
  include Votes

  belongs_to :user
  belongs_to :question

  validates :text, presence: true

  default_scope { includes(:user ) }
end
