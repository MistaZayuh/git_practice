require "pry"
# require_relative "MainDish"
# require_relative "SideDish"

class MainDish
  attr_accessor :item, :price
  def initialize(item, price)
    @item = item
    @price = price
  end
end

class SideDish
  attr_accessor :item, :price
  def initialize(item, price)
    @item = item
    @price = price
  end
end

class LunchLady
  attr_accessor 
  def initialize()
    @cart = []
    puts "Welcome to Ruby Cafe"
    puts "What is your name?"
    name = gets.strip
    puts "How much money do you have?"
    print "$"
    wallet = gets.to_i
    # create User Instance
    main_menu()
  end

  def main_menu()
    puts "--- Today's menu ---"
    puts "Main Dishes(Limit 1)"
    puts "1. Hot Dog $3"
    puts "2. Pizza $5"
    puts "3. Sandwhich $4"
    puts "Side Dishes(No Limit)"
    puts "4. Fries $2"
    puts "5. Chips $1"
    puts "6. Pudding $1"
    puts "7. Salad $3"
    puts "8. View Cart"
    puts "9. Empty Cart"
    puts "10. Exit"
    print ">"
    input = gets.to_i

    @md1 = MainDish.new("Hot Dog", 3)
    @md2 = MainDish.new("Pizza", 5)
    @md3 = MainDish.new("Sandwhich", 4)
  
    @sd1 = SideDish.new("Fries", 2)
    @sd2 = SideDish.new("Chips", 1)
    @sd3 = SideDish.new("Pudding Cup", 1)
    @sd4 = SideDish.new("Salad", 3)

    case input
    when 1
      @cart << @md1
      puts "Hot Dog added to cart"
      main_menu()
    when 2 
      @cart << @md2
      puts "Pizza added to cart"
      main_menu()
    when 3 
      @cart << @md3
      puts "Sandwhich added to cart"
      main_menu()
    when 4
      @cart << @sd1
      puts "Fries added to cart"
      main_menu()
    when 5
      @cart << @sd2
      puts "Chips added to cart"
      main_menu()
    when 6
      @cart << @sd3
      puts "Pudding cup added to cart"
      main_menu()
    when 7
      @cart << @sd4
      puts "Salad added to cart"
      main_menu()
    when 8
      total = 0
      @cart.each do |cart|
        puts "#{cart.item} $#{cart.price}"
        total += cart.price
      end
      puts "Cart Total = $#{total}"
      main_menu()
    when 9 
      @cart.clear
      puts "Cart has been emptied."
      main_menu()
    when 10
      puts "Goodbye."
    else
      puts "Invalid option. Please try again"
      main_menu()
    end


  end


end



class User
  attr_accessor :wallet, :name
  def initialize(wallet, name)
    @wallet = wallet
    @name = name
  end


end



LunchLady.new