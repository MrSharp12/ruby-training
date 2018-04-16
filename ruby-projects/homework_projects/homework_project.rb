dial_book = {
    "New York" => "212",
    "New Brunswick" => "717",
    "Indianapolis" => "317",
    "Valparaiso" => "219",
    "Deadwood" => "456"
}

# method to display city names
def get_city_names(hash)
    hash.each{ |k, v| puts k}
end
# method to get area code, dial_book and the city name
def get_area_code(hash, key)
    hash[key]
end

loop do
    puts "Do you want to lookup a city name?(Y/N)"

    answer = gets.chomp
    if answer != "Y"
        break
    end
    puts "Which city do you want the area code for?"
    get_city_names(dial_book)
    puts "Enter your selection"
    prompt = gets.chomp

    if dial_book.include?(prompt)
        puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else
        puts "You entered a city name not in the dictionary"
    end
end