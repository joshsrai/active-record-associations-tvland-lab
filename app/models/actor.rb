class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

def full_name
    "#{first_name} #{last_name}"
end

def list_roles
    self.characters.map{ |role| "#{role.name} - #{role.show.name}"}
end


end

# def all_artist_names
#     # return an array of strings containing every musician's name
#     artist_names = []
#     self.artists.each do|artist|
#       artist_names << artist.name
#     end
#     artist_names
#   end

# An actor has many characters and has many shows through characters.
# A character belongs to an actor and belongs to a show.
# A show has many characters and has many actors through characters.


# class Artist < ActiveRecord::Base
#     has_many :songs
#     has_many :genres, through: :songs
#   end 
  
  #artist is a parent of song
  #genre is a parent of song
  #song is a child of artist
  #song is a child of genre