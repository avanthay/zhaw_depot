class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def get_total_price
		sum = 0
		line_items.each do |line_item|
			sum += line_item.product.price
		end
		return sum
	end
end
