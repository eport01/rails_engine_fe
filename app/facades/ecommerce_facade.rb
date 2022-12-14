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
end