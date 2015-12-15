#!/usr/bin/env ruby
puts

puts "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000."

puts

a = (1...1000).to_a
1.times do |number|
  a.map { |x|
  if x % 5 == 0
    number= x + number
  elsif x % 3 ==0
    number = x + number
  else
    nil
  end}
  puts "The first method answer is #{number}"
  # (1...1000).select{|number| number % 3 == 0 || number % 5 == 0}.reduce(:+)
end

puts ""

puts "The second method answer is #{(1...1000).select{|number| number % 3 == 0 || number % 5 == 0}.reduce(:+)}"
