# frozen_string_literal: true

class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.references :votable, polymorphic: true
      t.references :user, foreign_key: true, null: false
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
