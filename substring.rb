#Implement a method #substrings that takes a word as the first argument and then an array of 
#valid substrings (your dictionary) as the second argument. It should return a hash listing 
#each substring (case insensitive) that was found in the original string and how many times 
#it was found.

 #   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 #   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

 #   > substrings("below", dictionary)
 #   => {"below"=>1, "low"=>1}

#Next, make sure your method can handle multiple words:

 #   > substrings("Howdy partner, sit down! How's it going?", dictionary)
 #   => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}


def substring(words, arr)
	results = {}
	substring_pool = []
	words_arr = []
	words_arr = words.downcase.gsub("'", " ").split(" ")
	words_arr.each do |word|
		(1..word.length).each do |i|
			(0..word.length - 1).each do |j|
				substring_pool << word.slice(j, i)
			end
		end
	end

	arr.each do |a|
		results[a] = (results[a] || 0 ) + 1 if substring_pool.include? a 
	end
	puts results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "below"
words = "Howdy partner, sit down! How's it going?"
substring(words, dictionary)