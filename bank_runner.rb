require_relative('bank_account_functions')
require_relative('bank_data')

puts "Welcome to CC Bank!"

# counter = 0

# while counter < 10
  # puts counter
  # counter += 1
# end

while(true)
  puts "What would you like to do?"
  puts
  puts "Options:"
  puts " 1: Show Account holders"
  puts " q: Exit"

  choice = gets.chomp().downcase()
  if choice == "q"
    puts "See you later!"
    break
  elsif choice == "1"
    puts "Account holders: "
    puts bank_account_owner_names(ACCOUNTS)
  end
end
