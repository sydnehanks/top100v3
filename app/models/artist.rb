class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :billboards, through: :songs

#def full_name
 # "#"{self.name}
#end
  #def create
    #render plain: params[:artist.inspect

  
  #def self.order_rank
  #  order(:rank)
  #end
end