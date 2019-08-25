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
    tours = BikeItours::Scraper
    list_tours
   
    puts ""
    puts "Please select the number of the location you would like to explore. When you have seen enough, just type 'q' for quit."
    input = gets.strip

    bike_icons
    if input.to_i > 0
      puts ""
      puts "////////////Here we go//////////////////"
      
      puts ""
      tour = get_details(input.to_i - 1)
      puts ""
      puts "//////////Want to see more?//////////////"
      new_bike
      puts "Select another tour number or type 'q' if you are ready to to hit the road!"
      puts ""
      menu
    elsif input == "q"
      puts ""
      puts "Arrivederci! We'll see you on the open road!"
      new_bike
    end
   end
  end
