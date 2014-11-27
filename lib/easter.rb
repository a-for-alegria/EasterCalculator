#!/usr/bin/env ruby

class Holiday

  def orthodox
    puts "| Welcome to \"Easter Calculator\"\n| Please enter the year: ... "
    month_selector{gets.chomp.to_i}
  end
  
  private
  
  def month_selector(&block)
    year = yield
    f = variable_calculation(year)
    if  
      f<=9 
      (day = 22+f) and (year > 1918) and (day += 13)
      month = "March"
      (day -= 31; month = "April") if day > 31
    else
      (day = f-9) and (year > 1918) and (day += 13)
      month = "April"
      (day -= 30; month = "May") if day > 30
    end
    puts "| Year: #{year}\n| Date of Easter: #{day} of #{month}."
  end

  def variable_calculation(var)
    d = ((19*(var % 19) + 15) % 30) 
    e = (2*(var % 4) + 4*(var % 7) + 6*d + 6) % 7
    d + e
  end
end

if __FILE__ == $0
  h = Holiday.new.orthodox
end
