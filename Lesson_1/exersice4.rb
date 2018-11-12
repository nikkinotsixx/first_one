puts "Решение квадратного уравнения типа ах^2 + bx + c = 0"
puts "Введите коэффициенты"
print "a = "
a = gets.to_f
print "b = "
b = gets.to_f
print "c = "
c = gets.to_f
d = b**2 - 4 * a * c
if d > 0
	d_sqrt = Math.sqrt(d)
	x1 = (-b + d_sqrt) / (2.0 * a)
	x2 = (-b - d_sqrt) / (2.0 * a)
	puts "Дискриминант равен #{d}, корни уравнения #{x1} и #{x2}"
elsif d == 0
	x = -b / (2.0 * a)
	puts "Дискриминант равен #{d}, корень - #{x}"
else
	puts "Корней нет"
end
