class Listing < ActiveRecord::Base
  belongs_to :host, class_name: :User
  belongs_to :neighbourhood
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations
end
