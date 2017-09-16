require 'pry'
# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  counter1 = 0
  loop do
    counter2 = 1
    while counter2 < nums.size do
      sum = nums[counter1] + nums[counter2]
      if sum == 0
        return [counter1, counter2]
      end
      counter2 += 1
    end

    binding.pry
    counter1 += 1
    break if counter1 > nums.size
  end
  nil
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
