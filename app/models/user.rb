class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :address
  belongs_to :position

  has_many :participations
  has_many :matches, through: :participations

  def admin?
    role == "admin"
  end
end
