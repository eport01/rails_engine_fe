class EcommerceFacade 
  def self.merchants 
    EcommerceService.all_merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end