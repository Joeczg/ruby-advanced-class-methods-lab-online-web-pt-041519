class Song
  attr_accessor :name, :artist_name
  @@all = []
 
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new 
    self.all << song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song
   end
   
   def self.create_by_name(name)
     song = self.new 
     song.name = name 
     song.save
     song 
    end
    
    def self.find_by_name(name)
      
      self.all.find {|song| song.name == name }
    end
    
    def self.find_or_creat_by_name(name)
      find_name = self.all.find {|song| song.name == name}
      if find_name = nil
        song = self.new
        song.name = name 
        song.save
        song
      end
    end
        
    
    
    
    
    
    
    
    
    
    
end