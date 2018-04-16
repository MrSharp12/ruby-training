class User

    attr_accessor :name, :email # this creates the getter and setter methods for name
    def initialize(name, email)
        @name = name # this is an instance variable
        @email = email
    end

    def run
        puts "Hey I'm running"
    end

    # def get_name # in order to get a name, you must make a method
    #     @name
    # end

    # def set_name(name)
    #     @name = name
    # end
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