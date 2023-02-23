# == Schema Information
#
# Table name: notes
#
#  id           :integer          not null, primary key
#  notable_type :string
#  notable_id   :integer
#  content      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Note < ApplicationRecord
  belongs_to :notable, polymorphic: true
end
