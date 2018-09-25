# 22_pangram.rb
# Determine if a sentence is a pangram. 
# A pangram (Greek: παν γράμμα, pan gramma, 
# "every letter") is a sentence using every letter 
# of the alphabet at least once. 
# The best known English pangram is "The quick brown fox jumps over the lazy dog."

# The alphabet used is ASCII, and case insensitive, 
# from 'a' to 'z' inclusively.

class Pangram

    def self.is_pangram?(str)
        for letter in ('a'..'z')
            if !str.downcase.include?(letter)
                return false
            end
        end
        return true
    end

end
