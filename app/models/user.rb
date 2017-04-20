class User < ApplicationRecord
  has_many :teams, class_name: "User", foreign_key: "member1", dependent: :destroy
  # has_many :member1s, class_name: "User", foreign_key: "member1"
  # has_many :member2s, class_name: "User", foreign_key: "member2"


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
