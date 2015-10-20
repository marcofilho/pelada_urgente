class Place < ActiveRecord::Base
  has_one :address
  has_many :arenas

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :arenas
end
