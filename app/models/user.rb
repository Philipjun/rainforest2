class User < ActiveRecord::Base
  has_secure_password

  has_many :reviews
  has_many :products, through: :reviews

  validates :password, presence: true, on: :create
  validates :name, presence: true
end
