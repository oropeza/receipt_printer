module SalesTaxHelper    
    def self.round_tax(i)
       ((i.to_d*20).ceil/20.0 ).round(2).to_d
    end

    def self.sales_tax(excempt: false, import: false)    
        t = excempt ? 0 : 0.10            
        (import ? t += 0.05 : t).to_d            
    end
end 