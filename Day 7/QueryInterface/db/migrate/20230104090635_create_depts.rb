class CreateDepts < ActiveRecord::Migration[5.2]
  def change
    create_table :depts do |t|
      t.integer :deptno, limit: 4, null: false
      t.string :dname, limit: 20
      t.string :loc, limit: 20
      t.timestamps
    end
  end
end
