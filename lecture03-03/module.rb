module Utils
  def normalize(string)
    string.gsub(/\W/, '')
  end
end

class Human
  include Utils
  attr_accessor :name
  def initialize(name)
    @name = normalize(name)
  end
end

class Animal
  include Utils
  attr_accessor :name
  def initialize(name)
   # @name = name.normalize_name!
    @name = normalize(name)
  end

  # def normalize_name!
  #   name.gsub!(/\W/, '')
  # end
end

animal = Animal.new('TEST NAME ??? sdfsdf!!!')
human = Human.new('sdfsdfsdf ???')
puts animal.name
puts human.name