def substrings(sentence, dictionary)
	out_hash = Hash.new(0)
	dictionary.each do |substr|
		no_of_matches = sentence.scan(/#{Regexp.escape(substr)}/i).length
		out_hash[substr] += no_of_matches if no_of_matches != 0
	end
	out_hash
end

#Testing
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Test 1"
p substrings("below", dictionary)
p substrings("below", dictionary) == {"below"=>1, "low"=>1}

puts "\nTest 2"
p substrings("Howdy partner, sit down! How's it going?", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary) == {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}