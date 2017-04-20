class User < ApplicationRecord
  has_many :teams, dependent: :destroy


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
