def caesar_cipher(message,key)
		message = message.split(' ')

		message.each do |word|
		
			word = word.split('')
			word.map {|letter| letter = letter.next!}
			word = word.join('')
			puts word
		end
	
end