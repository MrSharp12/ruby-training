# puts "Hello, enter your first name"
# first_name = gets.chomp
# puts "And your last name?"
# last_name = gets.chomp

# puts "Welcome, #{first_name} #{last_name} to the analyzer."
# puts "Your first name is #{first_name.length} characters long."
# puts "Your last name is #{last_name.length} characters long."
# puts "Your first name in reverse is #{first_name.reverse}."
# puts "Your last name in reverse is #{last_name.reverse}."

def multiply(first_number, second_number)
    first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
    first_number.to_f / second_number.to_f
end

def subtract(first_number, second_number)
    first_number.to_f - second_number.to_f
end

def mod(first_number, second_number)
    first_number.to_f % second_number.to_f
end

puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) find remainder"
prompt = gets.chomp #prompt gets user to enter 1, 2, 3, or 4

puts "Please enter your first number" # remember, gets.chomp converts to a string
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp

if prompt == '1'
    puts "You have chosen to multiply"
    result = multiply(first_number, second_number)
elsif prompt == '2'
    puts "You have chosen to divide"
    result = divide(first_number, second_number)
elsif prompt == '3'
    puts "You have chosen to subtract"
    result = subtract(first_number, second_number)
elsif prompt == '4'
    puts "You have chosen to find the remainder"
    result = mod(first_number, second_number)
else
    puts "You have made an invalid choice"
end

puts "The result is #{result}"



