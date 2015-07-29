def caesar_cipher(word,key)
	word_array = word.downcase.split('')
	
	word_array.map! do |letter|
	 shift(letter,key)
	end
	
	word_array.join()
end

def shift (letter,key)
	alph = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	
	old_letter = alph.index(letter)
	new_letter = alph[old_letter+key]
		
	letter = new_letter
end