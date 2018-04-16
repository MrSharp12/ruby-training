require 'pp'
require_relative 'user'

user = User.new 'danzig@gmail.com', 'Danzig'

pp user

user.save