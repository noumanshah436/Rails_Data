class Emp < ApplicationRecord
  # default_scope { order(empno: :asc) }

  self.primary_key = "empno"
  belongs_to :dept, foreign_key: "deptno"
  # this foreign is used to get dept of particular employee
  # Emp.first.dept

  has_many :employees, class_name: "Emp", foreign_key: "mgr"
  belongs_to :manager, class_name: "Emp", foreign_key: "mgr"

end


# test self accociation:

# e = Emp.find(7902)

# tp e.employees      ( use my own id and match it with the mgr of all employees)
# SELECT "emps".* FROM "emps" WHERE "emps"."mgr" = 7902


# e.manager           ( use my mgr value and match it with the empno(primarykey) of all employees)
# SELECT  "emps".* FROM "emps" WHERE "emps"."empno" = 7566
