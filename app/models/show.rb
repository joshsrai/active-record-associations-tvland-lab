class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
  
def actors_list
    actors.map{ |actor| actor.full_name}

end




end


# class Actor < ActiveRecord::Base
#     has_many :characters
#     has_many :shows, through: :characters
# end

# class Character < ActiveRecord::Base
#     belongs_to :actor
#     belongs_to :show
#   end

# An actor has many characters and has many shows through characters.
# A character belongs to an actor and belongs to a show.
# A show has many characters and has many actors through characters.


# class Artist < ActiveRecord::Base
#     has_many :songs
#     has_many :genres, through: :songs
#   end 
  
# class Genre < ActiveRecord::Base
#     has_many :songs
#     has_many :artists, through: :songs
#   end 
# class Song < ActiveRecord::Base
#     belongs_to :artist
#     belongs_to :genre
#   end 

  #artist is a parent of song
  #genre is a parent of song
  #song is a child of artist
  #song is a child of genre