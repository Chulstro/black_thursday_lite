
class ItemCollection
  attr_reader :items

  def initialize(item_info)
    @items = []
    CSV.foreach(item_info, headers: true) do |row|
      @items << Item.new(row)
    end
  end

  def all
  end

  def where(merchant_id)
  end
end
