begin
  puts 1 / 2
rescue ZeroDivisionError
  puts 'you divided by zero!'
else
  puts 'everything is okay!'
end

raise StandardError, 'Error!'