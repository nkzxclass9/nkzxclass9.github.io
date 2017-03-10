require 'oj'
require 'open-uri'

module ExchangeRates
  SUPPORTED_CURRENCIES = ['RUB', 'EUR']
  def self.included(klass)
    response = open('https://api.fixer.io/latest?base=USD').
        read
    json = Oj.load(response)
    temp = SUPPORTED_CURRENCIES.
        inject({}) do |hash, currency|
      hash[currency.downcase.to_sym] =
          json['rates'][currency]
      hash
    end
    klass.const_set('CURRENCY_RATE', temp)
  end
end

class Numeric
  include ExchangeRates
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

puts 5.eur
puts 1.rub