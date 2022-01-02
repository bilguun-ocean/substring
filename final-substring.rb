def find_substring (string, dictionary)
    string = string.downcase.split()
    result = Hash.new(0)
    string.each do |word|
        dictionary.each do |substring|
            if word.include?(substring)
                result[substring] += 1
            end
        end
    end
    result
end
