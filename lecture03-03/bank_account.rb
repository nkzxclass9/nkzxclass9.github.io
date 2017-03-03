class Numeric
  CURRENCY_RATE = {
      rouble: 0.4,
      euro: 1.1,
      rupee: 1.2
  }
  def method_missing(method)
    singular_method = method.
        to_s.gsub(/s\z/, '').
        to_sym
    if CURRENCY_RATE[singular_method]
      self * CURRENCY_RATE[singular_method]
    else
      super
    end
  end
end

puts 5.euros
puts 1.rouble