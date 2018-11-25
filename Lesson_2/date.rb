print "Введите число: "
date = gets.to_i
print "Введите номер месяца: "
month = gets.to_i
print "Введите год: "
year = gets.to_i

days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  days_in_month[1] += 1
end

day = days_in_month.take(month - 1).sum + date

puts "Номер даты #{day}."
