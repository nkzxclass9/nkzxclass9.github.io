String = 10
puts 'enter value:'
input = gets.to_s.strip
puts "You have entered: #{input}" # interpolation
puts 5.send(input.to_sym).inspect
