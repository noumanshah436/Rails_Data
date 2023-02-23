# == Schema Information
#
# Table name: employees
#
#  id          :integer          not null, primary key
#  account     :string
#  employee_id :integer
#  manager_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Employee < ApplicationRecord

  has_many :subordinates, class_name: "Employee",  foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee", optional: true

end


# You are going to simply create two labels for a parent/child relationship.
# Here, Rails uses subordinates and manager

# rails g model Employee account employee_id:integer manager_id:integer
# rails db:migrate

# emp1 = Employee.create(:account => "emp1")
# emp2 = Employee.create(:account => "emp2")
# man1 = Employee.create(:account => "man1")
# emp1.subordinates
# emp1.manager

# emp1 = Employee.find(1)

# emp1.subordinates << emp2
# emp1.manager = man1
# emp1.subordinates
