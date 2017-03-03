input = gets.strip
pattern = /https?:\/\/[\d\w-]+\.\w{2,8}/i

if input.empty? #.length == 0
  puts 'String is empty...'
elsif input =~ pattern
  puts 'This is a URL!'
else
  puts 'This is not a URL...'
end