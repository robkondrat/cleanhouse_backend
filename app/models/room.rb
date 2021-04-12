class Room < ApplicationRecord
  belongs_to :user
  
  validates :number, presence: true, uniqueness: true, numericality: { greater_than: 0 }
  validates :floor, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true
  validates :type, presence: true
end
