# == Schema Information
#
# Table name: accounts
#
#  id             :integer          not null, primary key
#  account_number :integer
#  supplier_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
