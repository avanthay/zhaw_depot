require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "add only one line_item for each product" do
    cart = Cart.create
    product = Product.create(title:       "My Book Title",
        description: "yyy",
        price:       1,
        image_url:   "image_url.jpg")
        #add one Product
        cart.add_product(product.id)
        cart.save
        assert_equal cart.line_items.count, 1
        #add the same Product a second time
        cart.add_product(product.id)
        cart.save
        assert_equal cart.line_items.count, 1
        product2 = Product.create(title:       "My second Book Title",
            description: "test",
            price:       2,
            image_url:   "image_url.jpg")
        #add a different Product to the cart
        cart.add_product(product2.id)
        cart.save
        assert_equal cart.line_items.count, 2
    end

end
