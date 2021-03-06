class MP3Importer
    attr_accessor :path
  
    def initialize(path)
      @path = path # ~/path/song_folder
    end
    

    def files
      # Dir["path/song_folder"] => [path/song_folder/song1.mp3, path/song_folder/song2.mp3, path/song_folder/album_art_1.jpg, cover2.wav]
      Dir.glob(@path+"/*.mp3").map { |file| file.split("/").last } # 
    end
  
    def import
      # ["michael jackson thriller.mp3", "beat it.mp3"]
      files.each { |filename| Song.new_by_filename(filename) } #?????
    end
end 
  
# new_instance = MP3Importer.new("path/song_folder")
# new_instance.import
