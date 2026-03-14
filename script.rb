def substrings(str, dict)
    
=begin
    words = str.downcase.split(/[\s,\.?!']+/) 
    result = Hash.new(0)

    words.each_with_object(result) do |word, result|
        dict.each do |dict_word|
            result[dict_word] += 1 if word.include?(dict_word)
        end
    end

    result
=end

    text = str.downcase
    result = Hash.new(0)

    dict.each_with_object(result) do |word, result|
        count = text.scan(word).length
        result[word] = count if count > 0
    end
end
