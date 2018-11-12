puts "Решение квадратного уравнения типа ах^2 + bx + c = 0"
puts "Введите коэффициенты"
print "a = "
a = gets.chomp.to_f
print "b = "
b = gets.chomp.to_f
print "c = "
c = gets.chomp.to_f
D = (b**2 - 4 * a * c)
if (D > 0)
	ans = Math.sqrt(D)
	x1 = (-b + ans) / (2 * a)
	x2 = (-b - ans) / (2 * a)
	puts "Дискриминант равен #{D}, корни уравнения #{x1} и #{x2}"
elsif (D == 0)
	x = -b / (2 * a)
	puts "Дискриминант равен #{D}, корень - #{x}"
else
	puts "Корней нет"
end