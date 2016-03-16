class Cipher
	attr_accessor :code, :key
	def initialize(code, key=0)
		@code = code;
	end
	
	def encrypt(key)
		@key = key		
		tempcode = @code.split(/\s+/)
		tempcode.map! do |word|
			temp = word.scan(/./)
			temp.map! do |letter|
				letter = letter.ord + key
				letter = letter.chr
			end
			word = temp
			word.join
		end
		@code = tempcode.join(" ")
		print "Encrypted Code: #{@code}"
	end
	
	def decrypt
		key = @key
		tempcode = @code.split(/\s+/)
		tempcode.map! do |word|
			temp = word.scan(/./)
			temp.map! do |letter|
				letter = letter.ord - key
				letter = letter.chr
			end
			word = temp
			word.join
		end
		@code = tempcode.join(" ")
		print "Decrypted Code: #{@code}"	
	end
	
end

print "Input string to be encrypted: "
str = gets.chomp
code = Cipher.new(str)
print "Input cipher key: "
key = gets.chomp
key = key.to_i
code.encrypt(key)
puts ""
code.decrypt


