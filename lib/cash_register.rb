require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction
    @@all = [] 
  

    def initialize (discount = nil)
        @discount = discount
        @total = 0.0
        @@all << self
        @items = []
        
    end 

    def self.all
        @@all
    end 


    def total
       @total.to_f
    end  

    def add_item (title, price, quantity= 1)
       
        self.total += (price * quantity)
        self.total

        quantity.times do
        self.items << title

        self.last_transaction = price * quantity
        end 

    end 
    
    def apply_discount
        if discount == nil
            return "There is no discount to apply."
        else
            self.total -= (discount * 10)
        return  "After the discount, the total comes to $#{self.total.to_i}."
        end 

    end 

  

    def void_last_transaction
        self.total -= last_transaction
    end 

# binding.pry 

end

