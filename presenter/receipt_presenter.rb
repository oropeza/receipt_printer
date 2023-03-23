class ReceiptPresenter
    def initialize(receipt)
      @receipt = receipt
    end
  
    def lines
      output = []
      output << "Receipt"
      output << "-------------"
      output.concat(@receipt.items.map{|item| item_label(item) })
      output << "Sales Taxes:\t#{sprintf("%.2f",(@receipt.sales_tax))}"
      output << "Total: \t\t#{sprintf("%.2f",(@receipt.total))}"  
    end 

    private
    def item_label(item)
        imported = ( item.import ?  "imported " : "")
        "#{item.quantity} #{imported}#{item.name} #{sprintf("%.2f",item.total)}" 
    end
end
