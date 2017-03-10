def my_method
  #my_procedure = Proc.new do |string|
  my_lambda = ->(string) do
    puts string
    return
  end
  #my_procedure.call('hi!', 5, 10, 'string')
  my_lambda.call('hi!', 10, 'string', 4)

  puts 'another line...'
end

my_method

# another_proc = proc { puts 'another one!' }
#
# my_procedure.call('hello from proc')
#
# my_lambda = lambda {|arg| puts arg }
# my_lambda.call('lambda!')
#
# stubby = ->(arg) {puts arg}
# stubby.call('stubby!')