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
end