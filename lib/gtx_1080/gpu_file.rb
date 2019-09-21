class GPU
    attr_accessor :name, :price
    @@all = []
    def initialize
      @@all << self
    end
    
    def self.all
      @@all
    end
  
    def self.user_all
      @@all.map do |gpu|
        puts gpu.name
        puts "$#{gpu.price}"
      end
    end
  
    def self.limit(int)
      @@all.map do |gpu|
        if gpu.price <= int
          puts gpu.name
          puts "$#{gpu.price}"
        end
      end
    end
  
    
    def self.create
      file = Scraper.get_page#.css#("h3")
      #file = html_files.css#("h3","span.s-item__price")
      file.each do |item|
        new_item = GPU.new
        new_item.name = item.css("h3").text
        new_item.price = item.css("span.s-item__price").text.gsub("$","").to_i
  
      end
    end
    
  end