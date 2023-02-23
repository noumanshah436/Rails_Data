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
require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
