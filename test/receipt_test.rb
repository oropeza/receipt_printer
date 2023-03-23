require 'yaml'
require "test/unit"
require 'minitest/autorun'  
require "./models/item"
require "./models/receipt"

class ReceiptTest <  MiniTest::Test 
  
  def test_input_01
    basket = YAML.load_file("data/input_01.yaml")
    receipt = Receipt.new(basket)
    assert_equal(1.50, receipt.sales_tax  )    
    assert_equal(42.32, receipt.total )    
  end
  def test_input_02
    basket = YAML.load_file("data/input_02.yaml")
    receipt = Receipt.new(basket)
    assert_equal(7.65, receipt.sales_tax  )    
    assert_equal(65.15, receipt.total )    
  end
  def test_input_03
    basket = YAML.load_file("data/input_03.yaml")
    receipt = Receipt.new(basket)
    assert_equal(7.90, receipt.sales_tax  )    
    assert_equal(98.38, receipt.total )    
  end
  def test_input_04
    basket = YAML.load_file("data/input_04.yaml")
    receipt = Receipt.new(basket)
    assert_equal(1.8, receipt.sales_tax  )    
    assert_equal(35.55, receipt.total )    
  end      
  
  def test_rounding_tax_rules
    
    assert_equal(1.55, SalesTaxHelper.round_tax(1.55) ) 
    assert_equal(2.50, SalesTaxHelper.round_tax(2.50) ) 
    assert_equal(3.60, SalesTaxHelper.round_tax(3.60) ) 
    
  end
  
  def test_tax_rules
    assert_equal(0.10, SalesTaxHelper.sales_tax(excempt: false, import: false) ) 
    assert_equal(0.15, SalesTaxHelper.sales_tax(excempt: false, import: true) ) 
    assert_equal(0.0,  SalesTaxHelper.sales_tax(excempt: true, import: false) ) 
    assert_equal(0.05, SalesTaxHelper.sales_tax(excempt: true, import: true) ) 
    
  end

end