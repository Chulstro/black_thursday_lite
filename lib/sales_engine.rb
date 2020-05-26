require 'pry'
require 'csv'

class SalesEngine

  def initialize(merchants, items)
    @merchants = merchants
    @items = items
  end

  def self.from_csv(info_pathing)
    @item_obj = ItemCollection.new(info_pathing[:items])
    @merchant_obj = MerchantCollection.new(info_pathing[:merchants])
    self.new(@merchant_obj, @item_obj)
  end

  def merchant_collection
    @merchant_obj.merchants
  end
end
