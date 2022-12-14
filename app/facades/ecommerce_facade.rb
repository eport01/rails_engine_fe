class EcommerceFacade 
  def self.merchants 
    EcommerceService.all_merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant_show(merchant_id)
    merchant = EcommerceService.merchant(merchant_id)[:data]
    Merchant.new(merchant)
  end

  def self.items_for_a_merchant(merchant_id)
    EcommerceService.merchant_items(merchant_id)[:data].map do |merchant|
      Item.new(merchant)
    end
  end
end