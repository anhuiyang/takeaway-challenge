require_relative './menu'

class Takeaway
  attr_reader :menu
  def initialize(menu = Menu.new)
    @order = []
    @menu = menu
  end

  def take_food(selection)
    case selection
      when "burgers"
        @order << {burgers: take_quantity}
      when "fries"
        @order << {fries: take_quantity}
      when "nuggets"
        @order << {nuggets: take_quantity}
      when "drinks"
        @order <<{drinks: take_quantity}
      else
        "I don't understand, please try again"
    end
  end

  def confirm
    puts "You've ordered £#{total}"
  end

  private
  def total(sum = 0)
    @order.each do |line|
      line.each do |food, qty|
        sum += qty.to_i * @menu.all[food]
      end
    end
    sum
  end
  def take_quantity
    p "Quantity, please"
    gets.chomp
  end
end
