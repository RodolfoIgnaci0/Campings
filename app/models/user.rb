class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :last_name, presence: true
  validates :phone, numericality: { only_integer: true }
  validates :phone, length: { in: 6..12 }
  validates :email, uniqueness: true
end
