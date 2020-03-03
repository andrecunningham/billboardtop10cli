class Artist

    @@all = []
    
    attr_accessor :name, :song,  
    def self.create_from_hash(hash)
        a = Artist.new
        hash.each do |key, value|
          a.send("#{key}=", value) if a.methods.include?("#{key}=".to_sym)
        end
        a.save
      end
    
      def self.all
        @@all
      end
    
      def save
        @@all << self
    
        self
      end
    
      def info
        <<~INFO
        Name: #{name}
        
        Song: #{song}
        INFO
      end
    
    end

   
# puts "The number #{artist.position} this month is #{artist.name} with the song: #{artist.song}"
end