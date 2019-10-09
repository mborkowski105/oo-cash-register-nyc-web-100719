require 'pry'

class CashRegister
<<<<<<< HEAD
  attr_accessor :total, :discount, :items, :prices
=======
  attr_accessor :total, :discount, :items
>>>>>>> 467ccfbe6ae6d638ea8d3ae5f7d5133ee989e065
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
<<<<<<< HEAD
    @prices = []
=======
>>>>>>> 467ccfbe6ae6d638ea8d3ae5f7d5133ee989e065
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
      self.items.push(title)
    end
<<<<<<< HEAD
    
    self.prices.push(price * quantity)
  end
  
  def apply_discount
    if (self.discount == 0)
      return "There is no discount to apply."
    else
      self.total = (total.to_f * ((100.0 - discount.to_f) / 100.0)).to_i
      return "After the discount, the total comes to $#{total}."
    end
  end
  
  def void_last_transaction
    self.prices.pop
    
    self.total = 0.0
    self.prices.each do |price| 
      self.total += price 
    end
=======
  end
  
  def apply_discount
    binding.pry
    return discount
>>>>>>> 467ccfbe6ae6d638ea8d3ae5f7d5133ee989e065
  end
end
