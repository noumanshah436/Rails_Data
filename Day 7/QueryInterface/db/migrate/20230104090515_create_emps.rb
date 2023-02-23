class CreateEmps < ActiveRecord::Migration[5.2]
  def change

    create_table :emps do |t|
      t.integer :empno, limit: 4, null: false
      t.string :ename, limit: 10
      t.string :job, limit: 9
      t.integer :mgr, limit: 4
      t.date :hiredate
      t.decimal :sal, precision: 7, scale: 2
      t.decimal :comm, precision: 7, scale: 2
      t.integer :deptno, limit: 2
      t.timestamps
    end
  end
end
