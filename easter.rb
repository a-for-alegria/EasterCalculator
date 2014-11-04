module Orthodox 
  def orthodox(year)
    year = yield
    a = year % 19
    b = year % 4
    c = year % 7
    d = (19*a + 15) % 30
    e = (2*b + 4*c + 6*d +6) % 7
    f = d + e
    if f<=9 
      day = 22+f + (13 if year > 1918)
      month = "March"
      if day > 31
        day = day - 31 
        month = "April"
      end
    else
      day = f-9 + (13 if year > 1918)
      month = "April"
      if day > 30
        day = day - 30 
        month = "May"
      end
    end
    puts "| Year: #{year}\n| Date: #{day} of #{month}."
  end
end
