class Team < ApplicationRecord
  belongs_to :member1, class_name: 'User'
  belongs_to :member2, class_name: 'User'

  validates :date, presence: true

  
end
