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

end



