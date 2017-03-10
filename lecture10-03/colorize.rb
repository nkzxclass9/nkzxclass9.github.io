require 'colorize'

def with_messages(starting = 'Starting...',
                  ending = 'End!')
  puts starting.red
  yield
  puts ending.blue
end

def compute(a, b)
  sleep 5
  a + b
end

with_messages { puts compute(1, 2) }