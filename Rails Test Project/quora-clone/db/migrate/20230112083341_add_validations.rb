class AddValidations < ActiveRecord::Migration[5.2]
  def change
    add_index :user_topics, %i[user_id topic_id], unique: true
    add_index :question_topics, %i[question_id topic_id], unique: true
    change_column_null :questions, :text, false
    change_column_default :questions, :text, from: nil, to: ''
    change_column_default :answers, :text, from: nil, to: ''
  end
end
