# frozen_string_literal: true

# Random Writer

# Inputs:
# String: "this is a tomato it is a fruit it is not a vegetable"
# Number: n = 5 (output length)
# Lookback: L = 2

# Goal output:
# A random string of n words

# Takes L consecutive random words as the starting word
# Every word is chosen randomly from the word coming immediately after the previous L words in the original sentence

# a fruit it is not

string = 'this is a tomato it is a fruit it is not a vegetable'
n = 5
l = 2

array_words = string.split(' ')
dynamic_dictonary = {}

array_words.each_with_index do |word, idx|
  start_idx = idx
  end_idx = idx + l - 1

  keys_array = []

  (start_idx..end_idx).each do |key_idx|
    keys_array << array_words[key_idx % array_words.length]
  end

  key = keys_array.join(" ")
  dynamic_dictonary[key] ||= []
  dynamic_dictonary[key] << array_words[(end_idx+1) % array_words.length]
end

p dynamic_dictonary

# first_word_index = rand(array_words.length)

# final_sentence = []
# first_word = array_words[first_word_index]

# final_sentence << first_word

# p first_word_index
# p final_sentence

# new_pool_of_words = []

# array_words.each_with_index do |word, idx|
#   if word == first_word
#     # TODO: handle end of string e.g idx + 1 > array length
#     new_pool_of_words << array_words[idx+1]
#   end
# end

# p new_pool_of_words.uniq
