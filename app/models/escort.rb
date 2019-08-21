class Escort < ApplicationRecord
  AUTHORIZED_ORIGIN = ["Africain", "Caucasien", "Asiatique", "Indien"]
  belongs_to :user
  validates :name, presence: true
  validates :city, presence: true
  validates :age, presence: true, inclusion: { in: ("18".."99") }
  validates :size, presence: true
  validates :origin, presence: true
  validates :origin, inclusion: { in: AUTHORIZED_ORIGIN }
  validates :price_per_day, presence: true
  validates :hair_color, presence: true
  validates :gender, presence: true
  mount_uploader :photo, PhotoUploader

  # geocoded_by :city
  # after_validation :geocode, if: :will_save_change_to_city?
end
