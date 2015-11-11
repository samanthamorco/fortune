class PagesController < ApplicationController

  def lotto
    @random_numbers = []
    6.times do
      @random_numbers << rand(60)
    end
    @random_numbers = @random_numbers.sort
  end

  def fortune
    fortunes = ["You will die a slow and painful death within the next year.", "You will find $20 on the ground!", "You will work at Google someday.", "You will work at Facebook next year.", "You will take Mark's job as ACLTC SF's instructor.", "Someone will give you free pizza.", "A hobo will pee on you."]
    @fortune = fortunes[rand(fortunes.length)]
  end

  def visit

  end

  def bottles
    bottle = 99
    until bottle < 0
      @line = "#{@bottle} bottle(s) of beer on the wall. #{@bottle} bottle(s) of beer. You take one down, pass it around, #{@bottle} bottle(s) of beer on the wall."
      bottle -= 1
    end
  end

  def table
    @information = [
      {firstname: "Sami", lastname: "Morco", accountnumber: rand(9999999999), email: "samimorco@gmail.com"}, 
      {firstname: "Mark", lastname: "Richardson", accountnumber: rand(9999999999), email: "markrichardson@gmail.com"},
      {firstname: "Nathan", lastname: "Fillion", accountnumber: rand(9999999999), email: "nathanfillion@gmail.com"},]
  end

end
