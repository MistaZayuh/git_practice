@contacts = [ 
  { fname: "Doug", phone: "000-111-2222" },
  { fname: "Tom", phone: "123-456-7890" },
  { fname:"Lisa", phone: "102-938-4756" }
]


def main_menu()
  puts "---Ruby Hash Contact List---"
  puts "1) View Contacts"
  puts "2) Add Contact"
  puts "3) Edit Contact"
  puts "4) Delete Contact"
  puts "5) Exit"
  print ">"
  input = gets.to_i

  case input
  when 1
    show_contacts()
  when 2
    add_contacts()
  when 3
    edit_contacts()
  when 4
    delete_contacts()
  when 5
  puts "Goodbye"
  else
  puts "Selection not valid. Try again"
  main_menu()
  end
end

def show_contacts()
  @contacts.each_with_index do |person, index|
    puts "#{index + 1} #{person[:fname]} #{person[:phone]}"
  end
  main_menu()
end

def add_contacts()
  puts "Add contact name"
  print ">"
  fname1 = gets.strip
  puts "Add contact phone number"
  print ">"
  phone1 = gets.strip
  name_hash = { fname: fname1, phone: phone1 }
  @contacts << name_hash
  main_menu()
end

def edit_contacts()
  puts "Which contact would you like to edit?"
  @contacts.each_with_index do |person, index|
    puts "#{index + 1} #{person[:fname]} #{person[:phone]}"
  end
  print ">"
  choice = gets.to_i - 1
  puts "Change contact first-name"
  print ">"
  fname2 = gets.strip
  puts "Change contact phone number"
  print ">"
  phone2 = gets.strip
  edit_hash = { fname: fname2, phone: phone2 }
  @contacts[choice] = edit_hash

  main_menu()

end

def delete_contacts()
  @contacts.each_with_index do |person, index|
    puts "#{index + 1} #{person[:fname]} #{person[:phone]}"
  end
  puts "Select contact to delete"
  print ">"
  @contacts.delete_at(gets.to_i - 1)

  main_menu()
end


main_menu()







