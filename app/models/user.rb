class User < ApplicationRecord
  has_many :teams, class_name: "User", foreign_key: "member1", dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
