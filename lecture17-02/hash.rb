my_hash = {
    my_key: 'test',
    my_other_key: 3,
    nested: {
        inside: 10,
        array_inside: [1,2,3]
    }
}

my_hash2 = {
    :my_key => 'test',
    :my_other_key => 3,
    'string' => 10
}

# puts my_hash[:my_key]
# puts my_hash[:my_other_key]
# puts my_hash[:nested][:inside]
# puts my_hash[:nested][:array_inside][1]
if my_hash[:non_existent]
  puts 'key found!'
else
  puts 'key not found!'
end