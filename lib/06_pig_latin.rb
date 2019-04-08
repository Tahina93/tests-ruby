#def translate(string)
#  pig_string = ''
#   if string[0] =~ /[aeiou]/
#       return string + 'ay'
#   elsif string[0] =~ /[^aeiou]/ && string[1] =~ /[aeiou]/
#       return string[1..-1] + string[0] + 'ay'
#   elsif string[0..1] =~ /[^aeiou]/
#       return string[2..-1] + string[0..1] + 'ay'
#   else
#       return string[0] + string + 'ay'
#   end
#end

#def translate_words(multi_words)
 #   word_count = multi_words.split.size
  #  if word_count > 1
   #     multi_words.map! do |word|
    #        translate(word)
     #   end
   # end
#end

#end
#
#
def translate(str)
    # Vowels to consider
    vowels = ["a", "e", "i", "o", "u"]
    
    # Special cases to consider
    two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
    three_letter_consonants = ["thr", "sch", "squ"]

    # Seperate each word from the phrase given
    words = str.split(" ")
    
    #Location for processed words
    result = [];
    
    
    
    words.each do |word|
        # Words that start with a vowels
        if vowels.include? word[0]
            result.push word << 'ay'
            
        # Words that start with a consonant
        else
            # Check for special consonants
            if three_letter_consonants.include? word[0] + word[1] + word[2]
                # Slice off first three letters
                first_three_letters = word.slice!(0,3)
                
                # Add letters to end of word with 'ay'
                result.push word << first_three_letters << 'ay'
                
            elsif  two_letter_consonants.include? word[0] + word[1]
                # Slice off first two letters
                first_two_letters = word.slice!(0,2)
                
                # Add the letters to end of word with 'ay'
                result.push word << first_two_letters << 'ay'
                
            else
                # Slice off first letter...
                first_letter = word.slice!(0)
                
                # Add first letter to end of word with 'ay'
                result.push word << first_letter << 'ay'
            end #End of special consonant check
    
        end #End of vowel check
        
        
        
    end #End of words.each
    
    
    
    #Present the processed words as a single string
    return result.join(" ")

end #End of translate function