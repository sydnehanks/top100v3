class Artist < ApplicationRecord
  has_many :songs
  has_many :billboard, through: :songs

  def self.order_rank
    order(:rank)
end
end