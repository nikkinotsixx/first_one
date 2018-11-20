fibo = [0, 1]
fibo_next = 1
while fibo_next <= 100
	fibo << fibo_next
	fibo_next = fibo[-1] + fibo[-2]
end

puts fibo
