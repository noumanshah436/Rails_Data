# frozen_string_literal: true

module ProfileHelper
  def asked_questions
    current_user.questions
  end

  def questions_answered_by_user(id)
    Question.distinct.with_answers_and_users.where(answers: { user_id: id })
  end

  def following?(topic)
    current_user&.followed_topics&.include?(topic)
  end
end
