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
    x = self.new
    @@all.push(x)
    x
  end
  
  def self.new_by_name(name)
    x = self.new
    x.name = name
    x
  end
    
  def self.create_by_name(name)
    x = self.new_by_name(name)
    x.save
    x
  end
  
  def self.find_by_name(name)
    @@all.find do |song|
      song.name == name
    end
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    @@all.sort_by do |song|
      song.name
    end
  end
  
  def self.new_from_filename(filename)
    step1 = filename.split("-")
    binding.pry
  end

end



