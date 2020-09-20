require_relative './lib/cash_register.rb'
require 'pry'

order100 =CashRegister.new(100)


order100.add_item("apple", 1)
order100.add_item("orange", 5, 7)
order100.add_item("banana", 2, 6)
order100.add_item("blueberry", 8, 1.0)


binding.pry