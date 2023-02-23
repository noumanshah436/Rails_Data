module Visible
  extend ActiveSupport::Concern

  included do
    validates :title, presence: true 
    attr_accessor :visible_to

    def is_visible?
      visible_to.present?
    end
  end

  class_methods do
    def count_all_visible
      all.select(&:is_visible?)
    end
  end

  # #  ALternate way
  #  module ClassMethods
  #  end
end
