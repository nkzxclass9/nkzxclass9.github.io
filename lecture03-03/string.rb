class String
  def palindrome?
    temp_string = self.gsub(/\W/, '').downcase
    temp_string.reverse == temp_string
  end
end

puts "Madam, I'm Adam".palindrome?