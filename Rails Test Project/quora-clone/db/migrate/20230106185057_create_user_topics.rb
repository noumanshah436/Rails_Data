# frozen_string_literal: true

class CreateUserTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :user_topics do |t|
      t.references :user, foreign_key: true, null: false
      t.references :topic, foreign_key: true, null: false

      t.timestamps
    end
  end
end
