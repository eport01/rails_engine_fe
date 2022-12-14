class Item 
  attr_reader :name, :id  
  def initialize(data)
    @name = data[:attributes][:name]
    @id = data[:id]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price]
    @merchant_id = data[:attributes][:merchant_id]
  end
end