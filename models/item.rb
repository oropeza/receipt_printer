require './helper/sales_tax_helper'

class Item

    attr_reader :tax, :total, :name, :quantity, :import

    def initialize(item)
        
       @name = item["name"]
       @quantity = item["quantity"] || 1
       @value = item["value"].to_d  || 0
       @excempt = item["excempt"] || false
       @import = item["imported"] || false
       @tax,@subtotal, @tax_total, @total = 0       
       calculate
    end
   
    private
    def calculate
       @subtotal =  @value*@quantity
       sales_tax = SalesTaxHelper.sales_tax(excempt: @excempt, import: @import)
       item_tax = SalesTaxHelper.round_tax( sales_tax * @value)           
       @tax = item_tax * @quantity
       @total = (@value + item_tax) * @quantity
    end    
end