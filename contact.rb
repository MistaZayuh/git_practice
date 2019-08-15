@contacts = []

def main_menu
  puts "---Ruby Contact List---"
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
  @contacts.each_with_index do |contact, index|
    puts "#{index + 1}) #{contact}"
  end
  main_menu()
end

def add_contacts()
  puts "Add contact name"
  print ">"
  @contacts << gets
  main_menu()
end

def edit_contacts()
  puts "Which contact would you like to edit?"
  @contacts.each_with_index do |contact, index|
    puts "#{index + 1}) #{contact}"
  end
  print ">"
  choice = gets.to_i - 1
  puts "Change contact name"
  print ">"
  name = gets
  @contacts[choice] = name

  main_menu()

end

def delete_contacts()
  @contacts.each_with_index do |contact, index|
    puts "#{index + 1}) #{contact}"
  end
  puts "Select contact to delete"
  print ">"
  @contacts.delete_at(gets.to_i - 1)

  main_menu()
end



main_menu()

