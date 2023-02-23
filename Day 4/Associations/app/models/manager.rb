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
class Manager < ApplicationRecord
  belongs_to :department
  has_one :manager_history
end
