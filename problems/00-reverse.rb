# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
  reversed = ''
  counter = -1

  if string.empty?
    reversed = ''
  else
    loop do
      reversed << string[counter]
      counter -= 1
      break if reversed.size == string.length
    end
  end

  reversed
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts('reverse("a") == "a": ' + (reverse("a") == "a").to_s)
puts('reverse("") == "": ' + (reverse("") == "").to_s)
puts('reverse("hello") == "olleh": ' + (reverse("hello") == "olleh").to_s)
