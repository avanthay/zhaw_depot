class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def get_total_price
		sum = 0
		line_items.each do |line_item|
			sum += line_item.product.price
		end
		return sum
	end
	
	def add_product(product_id)
		current_item = line_items.find_by(product_id: product_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(product_id: product_id)
		end
		current_item
	end
end