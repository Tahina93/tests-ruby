
#-------- CETTE PARTIE -------------

#Cette partie me permettait de résoudre les problèmes jusqu'a ce qu'il y ai 2 mots dans le tring.
#Je l'ai trouvée sur StackOverflow : https://stackoverflow.com/questions/44244478/ruby-multiple-words-pig-latin. 


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

#-------------------------------------------------------------------------
#
#
#--------------- CETTE PARTIE ---------------------------
#
#Je l'ai trouvée sur https://repl.it/@ikaur/04-Pig-Latin-Ruby
#Tout y est expliqué. Merci à cette personne extrêmement généreuse, elle à sûrement sauvé ma santée mentale.

def translate(str)
    # voyelles à considérer
    vowels = ["a", "e", "i", "o", "u"]
    
    # caractère spéciaux
    two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
    three_letter_consonants = ["thr", "sch", "squ"]

    # Création d'array pour séparer chaque mots de la phrase.
    words = str.split(" ")
    
    #Array une fois que les pots ont été modifiés.
    result = [];
    
    
    
    words.each do |word|
        # Mots qui commencent par des voyelles
        if vowels.include? word[0]
            result.push word << 'ay'
            
        # Mots qui commencent par des consonnes.
        else
            # Check for special consonants
            if three_letter_consonants.include? word[0] + word[1] + word[2]
                # séparer les 3 premières lettres.
                first_three_letters = word.slice!(0,3)
                
                # ajout des 3 lettres à la fin juste avant 'ay'
                result.push word << first_three_letters << 'ay'
                
            elsif  two_letter_consonants.include? word[0] + word[1]
                # séparer les 2 premières lettres
                first_two_letters = word.slice!(0,2)
                
                # ajout des deux lettre à la fin juste avant 'ay'
                result.push word << first_two_letters << 'ay'
                
            else
                # séparer la première lettre
                first_letter = word.slice!(0)
                
                # ajout de la première lettre à la fin pour finir par 'ay'
                result.push word << first_letter << 'ay'
            end #End of special consonant check
    
        end #End of vowel check
        
        
        
    end #End of words.each
    
    
    
    
    return result.join(" ") #tout remettre dans un seul string

end 




#------------------ UN AUTRE GRAS BIEN QUI A EU PEUR QU'ON SE SUICIDE ------------
#https://medium.com/@c.emily.collins/translating-to-pig-latin-with-ruby-f4e8e91d927e