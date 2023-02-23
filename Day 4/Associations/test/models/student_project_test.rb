# == Schema Information
#
# Table name: student_projects
#
#  id              :integer          not null, primary key
#  student_id      :integer
#  project_id      :integer
#  submission_date :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'test_helper'

class StudentProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
