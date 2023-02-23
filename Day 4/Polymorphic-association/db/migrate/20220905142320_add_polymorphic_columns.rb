class AddPolymorphicColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :commentable_type, :text
    add_column :comments, :commentable_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
