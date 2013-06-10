class Brew < ActiveRecord::Base
	has_many :fermentables
	has_many :extras
	has_many :hops
	has_many :yeasts
	accepts_nested_attributes_for :hops
	accepts_nested_attributes_for :fermentables
	accepts_nested_attributes_for :extras
	accepts_nested_attributes_for :yeasts
end
