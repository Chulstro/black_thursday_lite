
class MerchantCollection
  attr_reader :merchants

  def initialize(merchant_info)
    @merchants = []
    CSV.foreach(merchant_info, headers: true) do |row|
      @merchants << Merchant.new(row)
    end
  end

  def all
  end

  def find(item)
  end
end
