class Artist < ApplicationRecord
  has_many :songs
  has_many :gigs
end