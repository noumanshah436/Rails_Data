# frozen_string_literal: true

class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title, limit: 150, null: false, default: ''
      t.text :desc, limit: 500, null: false, default: ''
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
