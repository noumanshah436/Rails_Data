class PersonController < ApplicationController

  # http://localhost:3000/person/index
  def index
    # person = Person.new
    # person.name = "Uncle Bob"
    # person.save

    person = Person.find_by_name('Uncle Bob')
    p person.changed?

  end
end
