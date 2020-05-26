require './lib/sales_engine.rb'
require './lib/merchant_collection'
require './lib/item_collection.rb'
require './lib/item.rb'
require './lib/merchant.rb'
require 'pry'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
