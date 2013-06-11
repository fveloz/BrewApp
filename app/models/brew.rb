class Brew < ActiveRecord::Base
	belongs_to :user
	has_many :fermentables
	has_many :extras
	has_many :hops
	has_many :yeasts
	has_many :comments
	accepts_nested_attributes_for :hops, allow_destroy: true
	accepts_nested_attributes_for :fermentables, allow_destroy: true
	accepts_nested_attributes_for :extras, allow_destroy: true
	accepts_nested_attributes_for :yeasts, allow_destroy: true
end
