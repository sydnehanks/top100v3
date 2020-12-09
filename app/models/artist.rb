class Artist < ApplicationRecord
  has_many :songs
  has_many :billboard, through: :songs

  #def create
    #render plain: params[:artist.inspect

  
  #def self.order_rank
  #  order(:rank)
  #end
end