module StoreHelper

	def number_to_currency_swiss(price)
		if(price % 0.05 != 0)
			price = price.round(1)
		end
		number_to_currency(price, :locale => 'de-CH')
	end

end
