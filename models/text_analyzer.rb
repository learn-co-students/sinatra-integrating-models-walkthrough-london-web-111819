# Your TextAnalyzer model code will go here.
class TextAnalyzer

    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end

    def count_words
        text.split.length
    end

    # this method is the 'primitive' way
    # def count_vowels(string)
    #     vowels = 0
    #     counter = 0
    #     while counter < string.length do
    #         if string[counter]=="a" || string[counter]=="e" || string[counter]=="i" || string[counter]=="o" || string[counter]=="u"
    #             vowels += 1
    #         end
    #         counter += 1
    #     end
    #     return vowels
    # end 

    def count_vowels
        text.scan(/[aeoui]/).length
    end

#     this is also a 'primitivie' method 
#       def count_consonants(string)
#       consonants = 0
#       counter = 0
#       while counter < string.length do
#           if string[counter]!="a" && string[counter]!="e" && string[counter]!="i" && string[counter]!="o" && string[counter]!="u" && string[counter]!=" "
#               puts consonants += 1
#           end
#           counter += 1
#       end
#       return consonants
#     end

    def count_consonants
        text.scan(/[bcdfghjklmnpqrstvwxyz]/).length
    end

  def most_common_letter
      result = ["", 0]
      letters = text.split('')
      i = 0
      while i < letters.length #keeps the loop running until each letter in the letters array has been looked at
          common = letters.count(letters[i]) #counts the number of times the current letter in the the letters array appears
          if common > result[1] #if the count is great than the current value of the second element of result
              result = [letters[i] , common] 
              #the corresponding letter is placed in the first element of the result array and  
              #the second element of result array is rewritten to common letter count
          end 
          i +=1 
      end   
      result
  end 

# This is the example given in the README, however it requires more lines of code 
# def most_used_letter
#     s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
#     arr = s1.split('')
#     arr1 = arr.uniq
#     arr2 = {}
 
#     arr1.map do |c|
#       arr2[c] =  arr.count(c)
#     end
 
#     biggest = { arr2.keys.first => arr2.values.first }
 
#     arr2.each do |key, value|
#       if value > biggest.values.first
#         biggest = {}
#         biggest[key] = value
#       end
#     end
 
#     biggest
#   end


end