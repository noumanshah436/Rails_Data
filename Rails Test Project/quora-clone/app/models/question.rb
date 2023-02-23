# frozen_string_literal: true

class Question < ApplicationRecord
  paginates_per 10

  include Votes

  belongs_to :user
  validates :text, presence: true

  scope :with_answers_and_users, -> { includes(answers: :user, user: [avatar_attachment: :blob]) }

  has_many :question_topics, dependent: :destroy
  has_many :topics, through: :question_topics
  has_many :answers, dependent: :destroy

  def first_two_answers
    # answers.sort_by { |a| a.votes.count }.reverse.first(2)
    answers.first(2)
  end

  def all_answers
    # answers.sort_by { |a| a.votes.count }.reverse
    answers
  end
end
