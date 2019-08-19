class Escort < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :city, presence: true
  validates :age, presence: true, inclusion: { in: [18..99] }
  validates :size, presence: true
  validates :type, presence: true
  validates :price_per_day, presence: true
  validates :hair_color, presence: true
end