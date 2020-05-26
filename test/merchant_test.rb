require 'minitest/autorun'
require 'csv'
require './lib/merchant'

class MerchantTest < Minitest::Test

  def setup
    csv = CSV.read("data/merchants.csv", headers: true)
    @merchant_info = csv[0]
  end

  def test_its_initial_value
    merchant = Merchant.new(@merchant_info)

    assert_equal "Shopin1901", merchant.name
  end
end
