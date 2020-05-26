require 'minitest/autorun'
require './lib/sales_engine.rb'
require './lib/merchant_collection'
require './lib/item_collection.rb'
require './lib/item.rb'
require './lib/merchant.rb'
require 'pry'
require 'csv'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_can_produce_collections
    csv = CSV.read("data/merchants.csv", headers: true)
    @merchant_info = ItemCollection.new(csv[0])

    assert_equal @merchant_info, SalesEngine.merchant_collection[0]
  end
end
