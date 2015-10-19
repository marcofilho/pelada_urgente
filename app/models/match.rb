class Match < ActiveRecord::Base
  belongs_to :place
  has_many :participations
  has_many :users, through: :participations
end
