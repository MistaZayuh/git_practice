require "colorize"
require "pry"
require "colorized_string"

class Zoltar
  def initialize()
    @answers = [
    "It is certain.",
    "It is decidedly so.",
    "Without a doubt.",
    "Yes - definitely.",
    "You may rely on it.",
    "As I see it, yes.",
    "Most likely.",
    "Outlook good.",
    "Yes.",
    "Signs point to yes.",
    "Reply hazy, try again.",
    "Ask again later.",
    "Better not tell you now.",
    "Cannot predict now.",
    "Concentrate and ask again.",
    "Don't count on it.",
    "My reply is no.",
    "My sources say no.",
    "Outlook not so good.",
    "Very doubtful.",
    ]
    @baseline_answers = [
      "It is certain.",
      "It is decidedly so.",
      "Without a doubt.",
      "Yes - definitely.",
      "You may rely on it.",
      "As I see it, yes.",
      "Most likely.",
      "Outlook good.",
      "Yes.",
      "Signs point to yes.",
      "Reply hazy, try again.",
      "Ask again later.",
      "Better not tell you now.",
      "Cannot predict now.",
      "Concentrate and ask again.",
      "Don't count on it.",
      "My reply is no.",
      "My sources say no.",
      "Outlook not so good.",
      "Very doubtful.",
    ]
    startup()
  end
  def main_menu()
    puts 'Zoltar says "make your wish"'.colorize(:yellow)
    puts "What question would you like to ask Zoltar?".colorize(:cyan)
    print "> ".colorize(:cyan)
    @response = gets.strip
    zoltar_responds()
  end
  def coward()
    puts "You walk away feeling very unsatisfied"
    exit
  end

  def startup()
    puts "At a carnival, you see a mechanical genie called Zoltar speaks".colorize(:yellow)
    puts "Would you like to insert a quarter?(yes/no)".colorize(:cyan)
    def startup_question()
      print ColorizedString["> "].colorize(:cyan)
      play_game = gets.strip
      if play_game.downcase == "yes"
        puts "The Machine activates; Zoltar's eyes glow red".colorize(:yellow)
        main_menu()
      elsif play_game.downcase == "no"
        puts "You walk away from machine, content to live your happy, albeit boring life.".colorize(:yellow)
        exit
      else
        puts "It's a yes or no question. Just type yes or no".colorize(:color => :black, :background => :red)
        startup_question()
      end
    end
    startup_question()
  end

  def zoltar_responds()

    case 
    when @response.downcase == "print_answers"
      puts @answers.inspect
      sleep(5)
      main_menu()
    when @response.downcase == "reset_answers"
      @answers = @baseline_answers.map(&:clone)
      puts "Answer pool has been reset"
      main_menu()
    when @response.downcase == "quit"
      coward()
    when @response.downcase == "i wish i were big"
      puts 'The machine produces a card. It reads, "Your wish is granted"'.colorize(:yellow)
      puts "You begin to walk away, but notice that the machine has been unplugged this whole time".colorize(:yellow)
      puts "You feel eerily like Tom Hanks".colorize(:yellow)
      exit
    when @response.downcase == "add_answers"
      puts "Zoltar is shocked at your wisdom!".colorize(:yellow)
      puts "Zoltar leans forward and turns his ear towards you, as if to listen intently".colorize(:yellow)
      puts "What response would you like to teach Zoltar?".colorize(:cyan)
      new_answer = gets.strip
      @answers << new_answer
      main_menu()
    else
      puts @answers.sample(1)
      main_menu()
    end

  end


end







Zoltar.new()