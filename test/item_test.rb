require 'minitest/autorun'
# require './lib/sales_engine.rb'
# require './lib/merchant_collection'
# require './lib/item_collection.rb'
require './lib/item.rb'
# require './lib/merchant.rb'
require 'pry'
require 'csv'

class ItemTest < Minitest::Test

  def setup
    csv = CSV.read("data/items.csv", headers: true)
    @instance = csv.find do |row|
      row["id"] == '263409547'
    end
  end

  def test_its_initial_values
    item = Item.new(@instance)

    assert_equal '263409547', item.id
  end
end
