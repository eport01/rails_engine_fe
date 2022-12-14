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

  def self.item_page(item_id)
    item = EcommerceService.item_show(item_id)[:data]
    Item.new(item)
  end

  def self.item_index 
    EcommerceService.item_index[:data].map do |item|
      Item.new(item)
    end
  end
end