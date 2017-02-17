my_arr = [1,2,3,'test',:sym]

puts my_arr[0] == 1

my_arr.each do |local_variable|
  puts local_variable
end

my_arr.each { |local_variable| puts local_variable }

3.times do
  puts 'hi'
end

2.upto(10) do |i|
  puts i
end

loop do
  break if some_condition
end