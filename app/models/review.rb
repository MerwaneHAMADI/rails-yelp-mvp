class Review < ApplicationRecord
  validates :rating, :inclusion => { :in => 0..5 }
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
end
