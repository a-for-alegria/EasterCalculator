#!/usr/bin/env ruby

class Holiday

  def orthodox
    puts "| Welcome to \"Easter Calculator\""
    puts "| Please enter the year: ... "
    month_selector{gets.chomp.to_i}
  end
  
  private
  
  def month_selector
    year = yield
    f = variable_calculation(year)
    if f<=9 
      day = 22+f
      day += 13 if year > 1918
      month = "March"
      if day > 31
        day -= 31 
        month = "April"
      end
    else
      day = f-9
      day += 13 if year > 1918
      month = "April"
      if day > 30
        day -= 30 
        month = "May"
      end
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
  h = Holiday.new
  h.orthodox 
end