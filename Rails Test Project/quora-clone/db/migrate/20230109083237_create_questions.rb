# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :text
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
