def my_meth(arg)
  yield(arg) if block_given?
end
my_lambda = ->(string) { puts string }
my_meth('string', &my_lambda)
#my_meth('string') {|string| puts string}

def another_method(arg1, &block)
  #block.call(arg1)
  third_method(arg1, &block)
end

def third_method(some_arg, &block)
  block.call(some_arg)
end

another_method('string') do |string|
  puts string
end