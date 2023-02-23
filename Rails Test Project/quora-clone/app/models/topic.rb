# frozen_string_literal: true

class Topic < ApplicationRecord
  # scope :with_includes_all, -> { includes(:user, questions: [user: [avatar_attachment: :blob]]) }
  scope :with_includes_user, -> { includes(:user) }

  belongs_to :user
  has_one_attached :picture, dependent: :destroy

  has_many :user_topics, dependent: :destroy
  has_many :users, through: :user_topics, dependent: :destroy

  has_many :question_topics, dependent: :destroy
  has_many :questions, through: :question_topics, dependent: :destroy

  validates :picture, content_type: ['image/jpeg', 'image/png', 'image/jpg']
  validates :title, :desc, presence: true

  def all_questions
    # questions.with_answers_and_users.sort_by { |q| q.votes.count }.reverse
    questions.with_answers_and_users
  end
end
