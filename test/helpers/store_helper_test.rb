require 'test_helper'

class StoreHelperTest < ActionView::TestCase
	test "show swiss currency" do
		assert_match(/C{1}H{1}F{1} \d+('\d{3})*\.\d(0|5)/, number_to_currency_swiss(12001.05))
		assert_match(/C{1}H{1}F{1} \d+('\d{3})*\.\d(0|5)/, number_to_currency_swiss(1))
		assert_equal('CHF 12.30', number_to_currency_swiss(12.27))
		assert_equal('CHF 12.20', number_to_currency_swiss(12.22))
	end
end
