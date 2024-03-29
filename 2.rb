# Create Fibonnaci Array
a = [1,2]
upto = 4_000_000
while a[-2] + a[-1] < upto
  a << a[-2] + a[-1]
end

# Create sum of even Fibonnaci numbers
sum = 0
a.each { |x| sum+= x if x.even? }

puts "The result is #{sum}"