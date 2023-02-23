# frozen_string_literal: true

module Votes
  extend ActiveSupport::Concern

  included do
    has_many :votes, as: :votable, dependent: :destroy

    def likes_count
      votes.where(status: :like).count
    end

    def dislikes_count
      votes.where(status: :dislike).count
    end

    def liked(id)
      votes.where(status: 0, user_id: id).first
    end

    def disliked(id)
      votes.where(status: 1, user_id: id).first
    end

    def vote(id)
      votes.where(user_id: id).first
    end
  end

  class_methods do
  end
end
