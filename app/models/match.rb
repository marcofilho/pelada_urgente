class Match < ActiveRecord::Base
  VISIBILITIES = {
    hibrid: "Parcialmente privada",
    private: "Privada",
    public: "Pública"
  }

  belongs_to :place
  has_many :participations
  has_many :users, through: :participations
end
