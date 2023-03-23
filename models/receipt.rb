require 'bigdecimal'
require 'bigdecimal/util'

class Receipt

    attr_reader :items
    
    def initialize(basket)               
        @items = basket.each_with_object([]) do |item,res|            
            res << Item.new(item)   
         end    
    end
    def sales_tax
        @items.sum(&:tax)
    end
    def total
        @items.sum(&:total)
    end
end
