def find_substring(string, dictionary)
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

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

find_substring("Howdy partner, sit down! How's it going?", dictionary)