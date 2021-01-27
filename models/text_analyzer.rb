# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_reader :text

    def initialize(text)
        @text = text
    end

    #add methods to count words, vowels, consonants, most common letter   
    
    def words
        words = text.split(" ")
        words.count
    end

    def vowels 
        text.scan(/[aeouiAEIOU]/).count
    end

    def consonants
        cons = text.scan(/[a-z]/).count + text.scan(/[A-Z]/).count
        cons - vowels
    end

    def most
        s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
        arr = s1.split('')
        arr1 = arr.uniq
        arr2 = {}
    
        arr1.map do |c|
            arr2[c] =  arr.count(c)
        end
    
        biggest = { arr2.keys.first => arr2.values.first }
    
        arr2.each do |key, value|
            if value > biggest.values.first
                biggest = {}
                biggest[key] = value
            end
        end
    
        biggest
    end
end