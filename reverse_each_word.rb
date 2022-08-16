# Write your code here
require 'pry'


######using each loop

def reverse_each_word(sentense)
    words= sentense.split
    reversed_words = []

    words.each do |word|
        reversed_words << word.reverse
    end
    puts reversed_words.join(" ")
end
###### binding.pry
reverse_each_word("Hello there, and how are you?")


using map method
def reverse_each_word(sentence)
    words = sentence.split
  
    reversed_words = words.map do |word|
      word.reverse
    end
  
    puts reversed_words.join(" ")
end

reverse_each_word("Hello there, and how are you?")

######using proc shorthand
def reverse_each_word(sentence)
    words = sentence.split
  
    reversed_words = words.map(&:reverse)
  
    puts reversed_words.join(" ")
end

reverse_each_word("Hello there, and how are you?")

######chaining
def reverse_each_word(sentence)
    puts sentence.split.map(&:reverse).join(" ")
end

reverse_each_word("Hello there, and how are you?")

