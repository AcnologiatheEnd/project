class GPU::CLI
  
    def call
      input = nil
      puts "Welcome Human"
      puts  "this program will give has a list of gtx 1080 graphics processing units on ebay"
      puts 'if you wish to list all, enter: "all please" with quotations included '
      puts 'If you wish to find one within your spending limit, please enter your limit: ### without 
      quotations'
      puts 'If you are finish using this project, please type: please type: "done"'
      input = gets.strip
    
        if input == "all please"
          GPU.create
          GPU.user_all
        
        elsif input.class == Integer
          GPU.create
          GPU.limit(input)
      
        elsif input == "done"
          puts "thanks! Come again soon!"
          exit!
        end
        
        
    end
  
  end