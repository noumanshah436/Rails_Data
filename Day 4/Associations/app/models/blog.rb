# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Blog < ApplicationRecord
  # belongs_to :student
  belongs_to :student, foreign_key: "student_id"

  # use my own foreign key attribute (student_id) , and match it with the id of all students and get the matched student
end
