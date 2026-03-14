def substrings(str, dict)
    words = str.downcase.split(/[\s,\.?!']+/) 
    result = Hash.new(0)

    words.each_with_object(result) do |word, result|
        dict.each do |dict_word|
            result[dict_word] += 1 if word.include?(dict_word)
        end
    end

    #words.each do |word|
    #  dict.each do |dict_word|
    #    result[dict_word] += 1 if word.include?(dict_word)
    #  end
    #end

    result
    
    #str.downcase.split(/[ ,\.?!']/).reduce(Hash.new(0)) do |result, word|
    #    result[word] += 1 if dict.include?(word)
    #
    #   dict.each do |dict_word| 
    #       result[dict_word] += 1 if word.include?(dict_word) && dict_word != word
    #    end

    #    result
    #end
    
end
