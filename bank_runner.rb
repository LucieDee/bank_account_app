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
  puts " 2: Show account by type"
  puts " 3: Show account by risk"
  puts " 4: Show total balance of bank"
  puts " q: Exit"

  choice = gets.chomp().downcase()
  if choice == "q"
    puts "See you later!"
    break
  elsif choice == "1"
    puts "Account holders: "
    puts bank_account_owner_names(ACCOUNTS)
  elsif choice == "2"
    puts "Choose Business (B) or Personal (P) Account types: "
      type_choice = gets.chomp().downcase()
      if type_choice == "b"
        puts filter_accounts_by_type("business",ACCOUNTS)
      elsif type_choice == "p"
        puts filter_accounts_by_type("personal", ACCOUNTS)
      end
    elsif choice == "3"
      puts "What type of risk level would you like? h = High Risk, m = Medium Risk, l = Low Risk"
      risk_choice = gets.chomp().downcase()
      if risk_choice == "h"
        puts find_accounts_by_risk("high", ACCOUNTS)
      elsif risk_choice == "m"
        puts find_accounts_by_risk("medium", ACCOUNTS)
      elsif risk_choice == "l"
        puts find_accounts_by_risk("low", ACCOUNTS)
      end
    elsif choice == "4"
      puts "The total is: "
      puts total_cash_in_bank(ACCOUNTS)
  end
end
