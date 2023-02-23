class AddFieldstocomment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :name, :string
    add_column :comments, :comment, :text

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
