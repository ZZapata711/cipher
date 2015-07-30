def caesar_cipher(message,key)
    message = message.split(' ')
    message.map! do |word|      
        word = word.split('')           
        word.map! do |letter| # or word = word.map                
            key.times do                    
                case letter
                when "z"
                    letter = "a"
                when "Z"
                    letter = "A"
                else 
                    letter = letter.next!
                end
            end
            letter # return the next letter from the block
        end
        word.join('')
    end
    message.join(' ')
end 