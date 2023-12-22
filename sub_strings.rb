
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"];
strings = "Howdy partner, sit down! How's it going?"

def substrings(strings, dictionary)
    strings = strings.downcase
    strings_array = []
    match_array = []

    i = strings.length
    until i <= 0 do
        strings_array << strings[0..i-1]
        i -= 1
        if strings.length > 0 && i == 0
            strings[0] = ''
            i = strings.length
        end
    end

    dictionary.each do |element|
        strings_array.each do |fragment|
            if element == fragment
                match_array << fragment
            end
        end
    end

    strings_hash = match_array.reduce(Hash.new(0)) do |fragment, count|
        fragment[count] += 1
        fragment
    end
end


puts substrings(strings, dictionary);