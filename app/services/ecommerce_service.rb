class EcommerceService 
  def self.conn 
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.all_merchants
    get_url("/api/v1/merchants")
  end

  def self.merchant(merchant_id)
    get_url("/api/v1/merchants/#{merchant_id}")
  end

  def self.merchant_items(merchant_id)
    get_url("/api/v1/merchants/#{merchant_id}/items")
  end

  def self.item_show(item_id)
    get_url("/api/v1/items/#{item_id}")

  end

  def self.item_index
    get_url("/api/v1/items")
  end
end