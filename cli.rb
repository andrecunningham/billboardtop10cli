class CLI


    def start
        Scraper.new.scrape_top_artist

puts "welcome to the Billboard top 10 app."
main_menu
    end

    def main_menu
        puts "please select an option"
        puts ""
        puts "1. list Artist"
        puts "2. exit"
        main_menu_options
    end

    def main_menu_options
        input = gets.strip

        case input
        when "1"
            scraper.new.scrape_top_artist
            list_artist
        when "2"
             goodbye
        else 
            puts "that was not one of the options, please try again"
            main_menu
        end
    end
def goodbye
    puts "come again soon"
end

   # def create_artist
       # artist = Artist.new(Scraper.scrape_top_artist)
        binding.pry
    end

end