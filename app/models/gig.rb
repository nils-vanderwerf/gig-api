class Gig < ApplicationRecord
  belongs_to :venue
  belongs_to :genre
  has_many :artists
end