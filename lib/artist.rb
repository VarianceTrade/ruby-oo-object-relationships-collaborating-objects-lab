class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def add_song(song)
        @songs << song
    end

    def self.all #return all Artist instances
        return @@all 
    end

    def songs # list songs that belong to THIS artist
        @songs
    end

    def save
        @@all << self
    end

=begin
     This class method should take the name that is passed in (remember, it will be a string),  
     and do one of two things. Find the artist instance that has that
     name or create one if it doesn't exist. Either way, the return value of the method will be 
     an instance of an artist with the name attribute filled out.
=end
    def self.find_or_create_by_name(name)
        # return an artist instance
        # new_artist = @@all.find
        # find or create an artist by name
        # create new instance of Artist if none exist

        found_artist = nil
        new_artist = @@all
        new_artist.each do |artist|
            if artist.name == name
                found_artist = artist
            else
            end
        end

       if found_artist == nil
            return Artist.new(name)
        else
            return found_artist
        end
        # always return a new artist instance
    end

    def print_songs
        # list all of the artist's songs
        artist_songs = @songs
        artist_songs.each do |song|
            puts song.name
        end

    end
end



