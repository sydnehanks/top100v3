class Billboard < ApplicationRecord
 has_many :songs, dependent: :destroy
 has_many :artists, through: :songs
 #def index
 #end
end
