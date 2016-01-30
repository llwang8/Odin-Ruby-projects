#Implement a method #stock_picker that takes in an array of stock prices, one for each 
#hypothetical day. It should return a pair of days representing the best day to buy and 
#the best day to sell. Days start at 0.

#array.max_by(&:field)

def stock_picker(arr)
	sets = []
	arr.each_with_index do |a, i|
		arr.each_with_index do |b, j|
			sets << [i, j, b - a] if (j > i)  && (b >a) 
		end
	end
	max_profit_set = sets.inject do |memo, element|
		memo[2] > element[2] ? memo : element
	end

	#puts max_profit_set[0]
	puts "Buy Day index: #{max_profit_set[0]}" 
	puts "Sell Day Index: #{max_profit_set[1]}"
	puts "Profit: #{max_profit_set[2]}"
	#return max_profit_set

end

stock_picker([17,3,6,9,15,8,6,1,10])