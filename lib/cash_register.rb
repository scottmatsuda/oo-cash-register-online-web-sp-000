class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    self.add_item(title, price, quantity)
    @total -= @discount * 0.01 * @total
  end
  
end