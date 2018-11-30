puts 'Является ли треугольник прямоугольным?'
print 'Введите сторону a '
side_a = gets.chomp.to_f
print 'Введите сторону b '
side_b = gets.chomp.to_f
print 'Введите сторону c '
side_c = gets.chomp.to_f

a, b, c = [side_a, side_b, side_c].sort
rectangular = c**2 == a**2 + b**2

if rectangular && (a == b)
	puts 'Треугольник является прямоугольным и равнобедренным'
elsif rectangular
	puts 'Треугольник является прямоугольным'
elsif (c == b) && (c == a) && (a == b)
	puts 'Треугольник является равносторонним и равнобедренным'
elsif (c == b) || (c == a) || (a == b)
	puts 'Треугольник является равнобедренным'
else
	puts 'Треугольник не прямоугольный и не равнобедренный'
end
