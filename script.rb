def substrings(str, dict)
    str.downcase.split(/[ ,\.?!']/).reduce(Hash.new(0)) do |result, word|
        result[word] += 1 if dict.any?{|dict_word| dict_word == word}
        dict.each do |dict_word| 
            result[dict_word] += 1 if word.include?(dict_word) && dict_word != word
        end
        result
    end
end
