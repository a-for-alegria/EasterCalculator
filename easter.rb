puts "- Hello, I'm EasterEvaluator. I can tell you when will be(or was) the Easter."
puts "- Please enter the year which you'r interested in:"
year = gets.chomp.to_i
a = year % 19
b = year % 4
c = year % 7
d = (19*a+15) % 30
e = (2*b + 4*c + 6*d + 6) % 7
f = d + e
if f<=9 
    easter = 22+f
    easter = easter + 13 if year > 1918
    if easter > 31
        easter = easter - 31
        month = "April"
    else
        month = "March"
    end
else
    easter = f-9
    easter = easter + 13 if year > 1918
    if easter > 30
        easter = easter-30 
        month = "May"
    else 
        month = "April"
    end
end

puts "- In #{year}, Easter is going to be on #{easter} of #{month}."