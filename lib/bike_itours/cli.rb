class BikeItours::CLI

  def call
    greeting
    menu

  end 

  def bike_icons
     puts "--------"
     puts " -------- __@      __@       __@       __@      __~@
     ----- _`\<,_    _`\<,_    _`\<,_     _`\<,_    _`\<,_
     ---- (*)/ (*)  (*)/ (*)  (*)/ (*)  (*)/ (*)  (*)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
     ------------------------------------------------
     "
   end
 
 
   def greeting
     puts "Benvenuti amici!\nWelcome friends, please type the number beside the location that you would like to explore!\n
     ~~~Andiamo, Let's go!~~~
     "
   end

   def menu
    tours = BikeItours::Scraper
   
    puts ""
    puts "Please select the number of the location you would like to explore. When you are ready to go, just type 'q'."
    input = gets.strip

    # get_details = ["Tuscany is great!", "Rome is great!", "Piedmont is great!"]
    bike_icons
    if input.to_i > 0
      puts ""
      puts "////////////Here we go//////////////////"
      
      puts ""
      tour = get_details(input.to_i - 1)
      puts ""
      puts "//////////Want to see more?//////////////"
      bike_icons
      puts "Select another tour number or type q if you are ready to to hit the road!"
      puts ""
      menu
    elsif input == "q"
      puts ""
      puts "Arrivederci! We'll see you on the open road!"
    end
   end
  end