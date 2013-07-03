#! /usr/bin/ruby

=begin
Paul Salmon
Calculate and display the word frequency statistics from a text file
=end

source = 'testfile.txt'
wordHash = Hash.new
text = File.open(source, "r")
text.each_line{ |line|
	words = line.split
	words.each { |i|
		if wordHash.has_key?(i)
			wordHash[i] += 1
		else
		wordHash[i] = 1
		end
		}
	}

wordHash.each{ |word, count|
	puts "#{word} has occured #{count} times"
}
