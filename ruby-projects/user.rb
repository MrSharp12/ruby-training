# modules are a colleciton of behaviors
# that other classes can use via mixins
module Destructable #naming convention, modules ends with -able
    def destroy(anyobject)
        puts "I will destroy the object"
    end
end

class User
    include Destructable # this is the mixin
    attr_accessor :name, :email # this creates the getter and setter methods for name
    def initialize(name, email)
        @name = name # this is an instance variable
        @email = email
    end

    def run
        puts "Hey I'm running"
    end

    def self.identify_yourself # self. is how you call a class method
        puts "Hey I am a class method"
    end

    # def get_name # in order to get a name, you must make a method
    #     @name
    # end

    # def set_name(name)
    #     @name = name
    # end
end

class Buyer < User # < makes Buyer a subclass of User
    def run
        puts "Hey, I'm not running and I'm in the buyer class."
    end
end

class Seller < User

end

class Admin < User

end
user = User.new("Matt", "test@test.com")
puts "My user's name is #{user.name} and his email is #{user.email}."

# puts User.ancestors # ancestors is a method, lists out all of the superclasses of user

# user.run
# user1.run
# user2.run
# puts user


user.name = "Danzig"
user.email = "darklord@test.com"
puts "My user's new name is #{user.name} and his email is #{user.email}."

buyer1 = Buyer.new("John Doe", "johndoe@example.com")
buyer1.run

seller1 = Seller.new("John Doe1", "johndoe1@example.com")
seller1.run

admin1 = Admin.new("John Doe2", "johndoe2@example.com")
admin1.run

puts Buyer.ancestors
User.identify_yourself #was able to call with witb out initiating an object

user = User.new("Andrew Jupin", "wehatemoives.com")
user.destroy("myname")