# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Student < ApplicationRecord
  # has_many :blogs 
  has_many :blogs, foreign_key: "student_id"

  has_and_belongs_to_many :courses

  has_many :student_projects
  has_many :projects, through: :student_projects
end
