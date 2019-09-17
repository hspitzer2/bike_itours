class BikeItours::CLI

  def call
    greeting
    menu

  end 

  def bike_icons
    puts "--------"
    puts " ----     __@       __@       __~@       __@      __~@"
    puts "-----   _~\\\<,_    _~\\\<,_    _~\\\<,_    _~\\\<,_    _~\\\<,_"
    puts "----   (*)/ (*)  (*)/ (*)  (*)/ (*)  (*)/ (*) (*)/ (*)"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    puts "------------------------------------------------
    "
  end

 
   def new_bike
     
    puts "--------"
    puts " -----    
            __@         __~@
    ----  _`\\\<,_      _`\\\<,_
    ---- (*)/(*)  ----(*)/(*)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    ------------------------------------------------
    "
  end
 
   def greeting
     puts "Benvenuti amici!\nWelcome friends, here's a list of Italian towns for your next exciting bike tour adventure!\n
     ~~~Andiamo, Let's go!~~~
     "
   end

   def menu
    tours = BikeItours::Scraper.new
    tours.list_tours
   
    puts ""
    puts "Please select the number of the location you would like to explore. When you have seen enough, just type 'q' for quit."
    input = gets.strip

    bike_icons
    if input.to_i > 0 
      puts ""
      
      puts "//////////// Here we go, you selected tour ##{input} //////////////////"
      
      puts ""
    
      tours.get_details(input.to_i - 1)
      puts ""
      puts "////////// That's exciting, but there's more! //////////////"
      new_bike
      puts "Would like to learn about another tour?" 
      puts ""
      puts "Select the tour number or type 'q' if you are ready to to hit the road!"
      puts ""
      menu
    elsif input == "q"
      puts ""
      puts "Arrivederci! We'll see you on the open road!"
      new_bike
    end
   end
  end
