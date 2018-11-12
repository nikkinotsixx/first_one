puts "Является ли треугольник прямоугольным?"
print "Введите сторону a"
a = gets.chomp.to_f
print "Введите сторону b"
b = gets.chomp.to_f
print "Введите сторону c"
c = gets.chomp.to_f

triangle = [a , b, c].sort!

rectangular = triangle[2]**2 == triangle[0]**2 + triangle[1]**2
isosceles = a == b || a == c || b == c
equilateral = a == b && a == c

if rectangular
	puts "Треугольник - прямоугольный"
elsif isosceles
	puts "Треугольник - равнобедренный"
elsif equilateral
	puts "Треугольник - равносторонний"
elsif rectangular && isosceles
	puts "Треугольник прямоугольный и равнобедренный"
else
	puts "Треугольник не прямоугольный и не равнобедренный"
end