require 'minitest/autorun'
require 'csv'
require 'pry'
require './lib/merchant_collection'
require './lib/merchant'

class ItemCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new('data/merchants.csv')
  end

  def test_its_values
    assert_equal "12334105", @merchant_collection.merchants[0].id
  end
end
