puts "Вычислите площадь треугольника зная его основание и высоту"
print "Введите основание"
base = gets.chomp.to_f
print "Введите высоту"
height = gets.chomp.to_f
square = (1.0 / 2.0) * base * height
puts "Площадь треугольника - #{square}."