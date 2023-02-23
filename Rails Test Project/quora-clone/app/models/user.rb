# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  enum gender: { unknown: 0, male: 1, female: 2 }

  after_create :add_default_avatar, on: :create

  has_one_attached :avatar, dependent: :destroy
  validates :avatar, content_type: ['image/jpeg', 'image/png', 'image/jpg']

  has_many :topics, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  has_many :user_topics, dependent: :destroy
  has_many :followed_topics, through: :user_topics, source: :topic, dependent: :destroy

  has_many :followed_questions, through: :followed_topics, source: :questions

  def avatar_thumbnail
    avatar.variant(resize: '150x150!').processed
  end

  def followed_topics_questions
    followed_questions.distinct.with_answers_and_users
  end

  def follow_topic(topic)
    followed_topics << topic
  end

  def unfollow_topic(topic)
    user_topics.where(topic_id: topic.id).first.delete
  end


  private

  def add_default_avatar
    return if avatar.attached?

    avatar.attach(
      io: File.open(Rails.root.join('app', 'assets', 'images', 'default_profile.jpg')),
      filename: 'default_profile.jpg',
      content_type: 'image/jpg'
    )
  end
end
