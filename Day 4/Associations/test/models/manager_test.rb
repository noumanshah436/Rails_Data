# == Schema Information
#
# Table name: managers
#
#  id            :integer          not null, primary key
#  name          :string
#  email         :string
#  contact       :string
#  department_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require 'test_helper'

class ManagerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
