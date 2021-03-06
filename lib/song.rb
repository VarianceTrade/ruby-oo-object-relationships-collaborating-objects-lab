class Song
    
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        # artist OBJECT belongs to the song
        @artist = artist
        artist.songs << self

    end

    def artist_name=(name)

        # find
        found = nil
        Artist.all.each do |artist|
            if artist.name == name
                found = artist
            end
        end

        if found
            self.artist = found # assign found artist
        else
            artist = Artist.new(name) # create
            self.artist = artist # assign new artist
        end
    end


    def self.all
        return @@all
    end

    def self.new_by_filename(file_name)
        new_song_instance = Song.new(file_name.split(" - ")[1])
        new_artist_instance = Artist.new(file_name.split(" - ")[0])
        new_song_instance.artist = new_artist_instance #association
        return new_song_instance
    end
end
   




# find artist instance with name in the @@all array

found = nil

Artist.all.each do |artist|
    if artist.name == name 
        found = artist
    end
end


# # create
# X.new

# # assign attribute
#y.attribute = x

# # find
# found = nil

# y.each do |x|
#     if 
#         found = x
#     end
# end