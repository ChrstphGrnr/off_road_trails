class ColoradoTrails::Trails 

    attr_accessor   :name, :location, :rating, :description, :type, :url, 
                    :difficulty, :distance, :duration, :accessibility
    @@all = []

    def initialize(name= nil, location= nil, rating= nil, url= nil)
        @name = name
        @@all << self
    end


    def self.all 
        @@all
    end

    def self.clear
        @@all.clear
    end

    def self.name_location 
        puts "Trail".colorize(:light_green).ljust(84) + "Location\n".colorize(:light_green)
        @@all.each do |trail|
            puts trail.name.ljust(70).colorize(:light_blue) + trail.location.colorize(:light_blue)
        end
    end




    def showcase_details
        
        trail_name = self.name.delete("(/\#|[0-9]/)").strip
        
        puts "\n\nHere are the details for #{trail_name}:\n\n".colorize(:light_blue)
        puts "Rating:           #{self.rating}".colorize(:light_blue) unless self.rating == nil 
        puts "Trail Type:       #{self.type}".colorize(:light_blue)   unless self.type == nil 
        puts "Distance:         #{self.distance}".colorize(:light_blue)   unless self.distance == nil 
        puts "Duration:         #{self.duration}".colorize(:light_blue)   unless self.duration == nil 
        puts "Difficulty:       #{self.difficulty}".colorize(:light_blue) unless self.difficulty == nil
        puts "Accessibility:    #{self.accessibility}".colorize(:light_blue) unless self.accessibility == nil 
        puts "Website:          #{self.url}".colorize(:light_blue)
        
        
        if self.description != nil || self.description != ""
            # binding.pry
            self.description = self.description + " "
            puts "\n\nHere is a short description of the trail:\n\n#{self.description.scan(/.{1,66} /).join("\n")}".colorize(:light_blue)
        end
    
    end

end

