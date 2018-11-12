print "Как вас зовут? "
name = gets.chomp.capitalize!
print "Какого вы роста? "
height = gets.to_i

perfect_weight = height - 110

if perfect_weight >= 0
	puts "#{name}, ваш идеальный вес равен #{perfect_weight} кг."
else
	puts "Ваш вес уже оптимальный."
end
