class Team < ApplicationRecord
  belongs_to :member1, class_name: 'User'
  belongs_to :member2, class_name: 'User'

  validates :date, presence: true
  validates :member1, presence: true
  validates :member2, presence: true

  validate :check_equal

  private
    def check_equal
      errors.add(:member1, "can't be the same as member2") if member1 == member2
    end

end
