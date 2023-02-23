class Product < ApplicationRecord
  belongs_to :user , optional: true

  scope  :laptops, -> { where( name:"Laptop") }
  scope  :get_product, -> (name) { where( "name= ?", name) }

  # this scope will be applied across all queries to the model
  # default_scope { where("user_id IS NOT NULL") }

  # scope :name, -> { where(:attibute => value)}

end

# ****************
# https://guides.rubyonrails.org/v5.2/active_record_querying.html#scopes

# Product.laptops
# Product.get_product("Laptop")

# ****************

# class Article < ActiveRecord::Base
#   default_scope where(:published => true)
# end

# Article.all # => SELECT * FROM articles WHERE published = true


