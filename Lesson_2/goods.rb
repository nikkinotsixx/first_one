goods = {}
total = 0

loop do
  print "Введите название товара или слово стоп для завершения ввода: "
  item = gets.chomp
  break if item == "стоп"
  print "Введите цену товара: "
  price = gets.to_f
  print "Введите количество: "
  quantum = gets.to_i
  goods[item] = {price: price, quantum: quantum}
end

goods.each do |type, value|
  item_total = value[:quantum] * value[:price]
  total += item_total
  print "Итоговая цена за #{type} = #{item_total}"
end

print "Итоговая цена за все товары = #{total}"
