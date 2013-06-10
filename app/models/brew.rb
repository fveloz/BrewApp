class Brew < ActiveRecord::Base
	has_many :fermentables
	has_many :extras
	has_many :hops
	has_many :yeasts
	accepts_nested_attributes_for :hops
end
