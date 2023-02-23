# == Schema Information
#
# Table name: manager_histories
#
#  id               :integer          not null, primary key
#  joining_date     :date
#  total_experience :integer
#  manager_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class ManagerHistory < ApplicationRecord
  belongs_to :manager
end
