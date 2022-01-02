#1st version that checks if substring is in the string

def find_substring (string, dictionary)
    string.downcase!

    dictionary.reduce(Hash.new(0)) do |found, substring|
        if string.include?(substring)
            found[substring] += 1
        end
        found
    end
end

#2nd version 

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
