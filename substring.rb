#substring - finds all instances of strings from a dictionary from within a passed string
require "pry"
def substrings(string, dictionary)
    string_counter = Hash.new(0)
    dictionary.each do |element|
        if string.include? element
            string_counter[element] = string.scan(element).length
        end
    end 
    return string_counter
end

    

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below go the howdy below", dictionary)