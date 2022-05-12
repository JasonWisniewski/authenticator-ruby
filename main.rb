users = [
  {username: "mashrur", password: "password1"},
  {username: "jack", password: "password2"},
  {username: "jason", password: "password3"},
  {username: "john", password: "password4"},
  {username: "joe", password: "password5"},
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username  && user_record[:password] == password
        return user_record
      else
      end
    end
  "credentials were not correct"
end

puts "Welcome to the authenticator"
200.times { print "-"}
puts "This program will take input form the user and copare password"
puts "If password is correct you will get back the user object"


attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)
  puts authentication

  puts "press n to quit or any other key to continue"
  input = gets.chomp.downcase

  break if input == 'n'
  attempts += 1 
end

puts "you have exceeded the number of attempts" if attempts == 4