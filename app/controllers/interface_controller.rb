    # module InterfaceController

    def main_menu
      print "\e[H\e[2J" 
      puts <<-EOS
  ___      _     _                       _____ _                  _               _ _          _   _             
 / _ \    | |   | |                     /  ___| |                | |             | (_)        | | (_)            
/ /_\ \ __| | __| |_ __ ___  ___ ___    \ `--.| |_ __ _ _ __   __| | __ _ _ __ __| |_ ______ _| |_ _  ___  _ __  
|  _  |/ _` |/ _` | '__/ _ \/ __/ __|    `--. \ __/ _` | '_ \ / _` |/ _` | '__/ _` | |_  / _` | __| |/ _ \| '_ \ 
| | | | (_| | (_| | | |  __/\__ \__ \   /\__/ / || (_| | | | | (_| | (_| | | | (_| | |/ / (_| | |_| | (_) | | | |
\_| |_/\__,_|\__,_|_|  \___||___/___/   \____/ \__\__,_|_| |_|\__,_|\__,_|_|  \__,_|_/___\__,_|\__|_|\___/|_| |_|
                                                                                                                 
                                                                                                                 
EOS
      puts "Welcome to my application!"
      puts "Please select 'n' for Address Normalizaion and 'q' for Leave the program"
      puts <<-EOS 
      [n] Normilize Address
      [q] Exit program

      Enter Selection _
      EOS

      case gets.strip
      when "n"
        normalize_address
      when "q"
        print "\e[H\e[2J"
        exit 
      else 
        puts "No option found"
        main_menu
      end 
    end

     def navigation 
          puts "please press 'n' to standardize another address or press 'b' to back to main menu"
      case gets.strip 
      when "n"
        normalize_address
      when "b"
        main_menu
      end 
    end   
 main_menu
# end