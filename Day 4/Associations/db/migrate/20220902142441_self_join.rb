class SelfJoin < ActiveRecord::Migration[5.2]
  def change
   add_column :users , :coach_id, :integer
  end
end
