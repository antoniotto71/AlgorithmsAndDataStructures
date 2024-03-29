def anagrams_of(string)
  # Base case: if the string is only one character,
  # return an array containing just a single character string
  return [string[0]] if string.length == 1

  # Create an array to hold all the anagrams:
  collection = []

  # Find all the anagrams of the substring from the second character until
  # the end. For example, if the string is "abcd", the substring is "bcd",
  # so we'll find all anagrams of "bcd":
  substring_anagrams = anagrams_of(string[1, string.length - 1])

  # Iterate over each substring
  substring_anagrams.each do |substring_anagram|

    # Iterate over each index of the substring, from 0 until
    # one index past the end of the string
    (0..substring_anagram.length).each do |index|

      # Create a copy fo the substring anagram
      copy = String.new(substring_anagram)

      # Insert the first character of our string into the
      # substring anagram copy. Where it will go depends
      # on the index we're up to within this loop.
      # Then, take this new string and add it to the our collection of anagrams:

      collection << copy.insert(index, string[0])
    end
  end

  # Return the entire collection of anagrams:

  return collection

end

p anagrams_of("antonio")

