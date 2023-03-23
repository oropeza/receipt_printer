require 'yaml'
require "./models/item"
require "./models/receipt"
require "./presenter/receipt_presenter"

file_name = "data/#{ARGV[0]}"

if File.exists?(file_name)
    basket = YAML.load_file(file_name)
    @presenter = ReceiptPresenter.new(Receipt.new(basket))
    puts @presenter.lines.join("\n")
else
    puts "No basket present"
end

