require 'minitest/autorun'
require 'csv'
require 'pry'
require './lib/item_collection'
require './lib/item'

class ItemCollectionTest < Minitest::Test

  def setup
    # items = CSV.read('data/items.csv', headers: true)
    @item_collection = ItemCollection.new('data/items.csv')
  end

  def test_its_values
    assert_equal "263395237", @item_collection.items[0].id
  end
end
