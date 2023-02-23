class Student < ApplicationRecord

  def to_s
    "stdent #{self.name}"
  end
end
