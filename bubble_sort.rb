#1. Build a method #bubble_sort that takes an array and returns a sorted array. 
#   It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn't it?).

#2. Now create a similar method called #bubble_sort_by which sorts an array but accepts 
#   a block. The block should take two arguments which represent the two elements currently 
#   being compared. Expect that the block's return will be similar to the spaceship operator 
#   you learned about before -- if the result of the block is negative, the element on the left 
#   is "smaller" than the element on the right. 0 means they are equal. A positive result means 
#   he left element is greater. Use this to sort your array.

def bubble_sort(arr)
	n = arr.size - 1
	whie n > 0
		(1..n).each do |i|
			#puts arr[i]
			#puts arr[i + 1]
			if !arr[i + 1].nil? && a > arr[i + 1] 
				temp = a
				arr[i] = arr[i + 1]
				arr[i + 1] = temp
			end
		end
		n -= 1
	end
	puts arr
end

def bubble_sort_by(arr, &operation)
	n = arr.size - 1
	while n > 0
		(1..n).each do |i|
			if !arr[i + 1].nil? && operation.call(a, arr[i + 1])
				temp = a
				arr[i] = arr[i + 1]
				arr[i + 1] = temp
			end
		end
		n -= 1
	end
	puts arr
end


bubble_sort([4,3,78,2,0,2])


 bubble_sort_by(["hi","hello","hey"]) do |left, right|
 	left.length - right.length
 end

