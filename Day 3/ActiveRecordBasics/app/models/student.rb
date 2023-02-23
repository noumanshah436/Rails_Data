class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    if record.name == "Nouman"
      record.errors[:base] << "This person is Nouman"
    end
  end
end

class MyValidator < ActiveModel::Validator
  def validate(record)
    unless record.name.starts_with? 'X'
      record.errors[:base] << 'Need a name starting with X please!'
    end
  end
end




class Student < ApplicationRecord
  # validates :name, presence: true, allow_blank: true
  # validates :name, presence: true
  # validates :name, absence: true
  # validates :name, uniqueness: true
  # validates :name, numericality: true
  # validates_with GoodnessValidator
  # validates_with MyValidator
  # validates :name, presence: true, length: { minimum: 3 }
  # validates :name, presence: { message: "name must be given please" }

  validate :custom_method

  def custom_method
    if self.age < 18
      errors.add(:age, "age should be greater than 18")
    end
  end

end




# Student.create!(name: "Nouman")           # this give error on GoodnessValidator

# *********************
# validate:

#  validate :custom_method -> By default, such validations will run every time you call valid? or save the object.
# std = Student.create!(name: "nouman", age: 17)    -- give error as customized in custom_method

#  But it is also possible to control when to run these custom validations by giving an :on option to the validate method, with either: :create or :update.
# validate :custom_method, on: :create
