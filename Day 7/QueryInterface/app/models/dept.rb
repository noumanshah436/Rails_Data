class Dept < ApplicationRecord
  self.primary_key = "deptno"
  has_many :emps, foreign_key: "deptno"

  # foreign_key is used to get employees of that department
  # matches the

  #  SELECT  "emps".* FROM "emps" WHERE "emps"."deptno" = ? ORDER BY "emps"."empno" ASC LIMIT ?  [["deptno", 10], ["LIMIT", 11]]
end
