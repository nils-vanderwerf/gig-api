class Gig < ApplicationRecord
  belongs_to :venue
  belongs_to :artist 
end