# == Schema Information
#
# Table name: people
#
#  id             :bigint           not null, primary key
#  name           :string
#  species_id     :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  home_planet_id :integer
#
class Person < ApplicationRecord
  belongs_to :species

  belongs_to :home_planet, class_name: 'Planet'

  has_many :person_films
  has_many :films, through: :person_films

  has_one :senator, through: :home_planet

  has_many :cictizens, through: :home_planet

  # if the name of the association(home_planet)   is differnt from the name of the model
  # then we add option to specify which model class we want  to associate with
end
