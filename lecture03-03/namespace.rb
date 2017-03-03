module FancyOutputter
  module Inner
    class Printer
      def initialize
        puts 'hi from printer'
      end
    end
  end
end

printer = FancyOutputter::Inner::Printer.new
