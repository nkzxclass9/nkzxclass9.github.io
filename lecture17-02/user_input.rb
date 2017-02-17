database = {
    some_key: 'test string',
    other_key: 10
}

puts 'enter value:'
input = gets.to_s.strip
#puts 'You have entered: ' + input
puts "You have entered: #{input}" # interpolation
puts input.to_sym
if database[input.to_sym]
  puts 'The value is:'
  puts database[input.to_sym]
else
  puts 'Key not found!'
end