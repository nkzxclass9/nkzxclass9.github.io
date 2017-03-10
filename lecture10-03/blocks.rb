def my_meth(a, b)
  yield(a.to_i, b.to_i) if block_given?
end

result = my_meth('1', '2') do |arg1, arg2|
  arg1 + arg2
end
puts result