# frozen_string_literal: true

class AddDeviseAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, limit: 60, null: false, default: ''
    add_column :users, :username, :string, limit: 60, null: false, default: ''
    add_column :users, :age, :integer, limit: 4, null: false, default: 0
    add_column :users, :gender, :integer, null: false, default: 0
  end
end

# name, age, gender, email, username, and profile picture
