class GPU::CLI
  
  def call
    puts "Welcome Human"
    puts "this program will give has a list of gtx 1080 graphics processing units on ebay"
    puts 'if you wish to list all, enter: all please'
    puts 'If you wish to find one within your spending limit, enter: limit please'
    puts 'If you are looking for a specific attribute, type: find'
    puts 'If you are finish using this project, please type: done'

    input = gets.strip
    #input = input.gsub("\n","")
  
      if input == "all please"
        GPU.create
        GPU.user_all
      
      elsif input == "limit please"
      puts "Enter your price limit: "
      num_input = gets.to_i
        GPU.create
        GPU.limit(num_input)
      
      elsif input == "find"
        puts "Enter a specific keyword: "
        find_input = gets.strip
        GPU.create
        GPU.find_item(find_input)
      
      elsif input == "done"
        puts "C o m e  a g a i n  s o o n!"
        exit!
      
      else 
        puts "that is not a valid command"

      end
      call
  end

end