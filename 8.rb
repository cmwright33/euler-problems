n = 70172427121883998797908792274921901699720888093776

consec = 5

def product integer
  prod = 1
  integer.to_s.length.times { |i| prod *= integer.to_s[i].to_i }
  prod
end

array_results = []
(0..n.to_s.length - consec).each do |counter|
  select  = n.to_s[counter..counter + consec - 1]
  prod    = product select
  array_results << prod
end

puts "The max product of #{consec} consecutive digits in the integer n is #{array_results.max}."

# Extra, just FYI
index = array_results.index(array_results.max)
puts "(Those #{consec} consecutive digits are #{n.to_s[index..index + consec - 1].to_i}.)"