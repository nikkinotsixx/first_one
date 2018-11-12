puts "Является ли треугольник прямоугольным?"
print "Введите сторону a "
a = gets.chomp.to_f
print "Введите сторону b "
b = gets.chomp.to_f
print "Введите сторону c "
c = gets.chomp.to_f

triangle = [a , b, c].sort!

rectangular = triangle[2]**2 == triangle[0]**2 + triangle[1]**2
equilateral = a == b && a == c
isosceles = a == b || b == c

if equilateral
	puts "Треугольник - равносторонний"
elsif rectangular && isosceles
	puts "Треугольник прямоугольный и равнобедренный"
elsif rectangular
	puts "Треугольник - прямоугольный"
elsif isosceles
	puts "Треугольник - равнобедренный"
else
	puts "Треугольник не прямоугольный и не равнобедренный"
end
