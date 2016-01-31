module Enumerable

	def my_each
		return self unless block_given?
		i = 0
		while i < self.size
			yield(self[i])
			i += 1
		end
		self
	end

	def my_each(some_method)
		return self unless block_given?
		i = 0
		while i < self.size
			some_mehtod.call(self[i])
			i += 1
		end
		self
	end

	def my_each_with_index

		i = 0
		while i < self.size
			return yield(self[i]), i
			i += 1
		end
	end

	def my_select
		return self unless block_given?
		i = 0
		selected = []
		while i < self.size
			selected << yield(self[i]) if yield(self[i])
		end
		selected
	end

	def my_all?
		if block_given?
			for i in self
				return false unless yield(i)
			end
		end
		true
	end

	def my_any?
		if block_given?
			for i in self
				return true if yield(i)
			end
			return false
		end
		return true if self != nil
		false
	end

	def my_none?
		for i in self
			if block_given?
				return true unless yield(i)
			else
				return false if i != nil && i != false
			end
		end
		true
	end

	def my_count(arg=nil)
		counter = 0
		for i in self
			if block_given?
				counter += 1 if yield(i)
			elsif arg != nil
				couner += 1 if i == arg
			else
				counter += 1
			end
		end
		counter
	end

	def my_map(*&proc)
		map_result = []
		if block_given?  || !proc.nil
			for i in self
				map_result << proc.call(i) if !proc.nil
				map_result << yield(i) if block_given?
			end
			map_result
		else
			self
		end
	end

	def my_inject(n=nil)
		memo = n === nil? self.first : n
		m = n == nil ? self.my_count - 1 : self.my_count
		for i in self.last(m)
			memo = yield(memo,i)
		end
		memo
	end

end

def multiply_els(array)
	array.my_inject { |memo, n| memo * n}
end


