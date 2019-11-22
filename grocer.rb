# find an item and returns a hash
def find_item_by_name_in_collection(name, collection)
  i = 0
  while i < collection.length
    item = collection[i][:item]

    return collection[i] if name == item

    i += 1
  end

  nil
end

def get_uniq(cart)
  basket = []

  i = 0
  while i < cart.length
    item_name = cart[i][:name]
    item = cart[i]

    if find_item_by_name_in_collection(item_name, basket) == nil
      basket << item
    end

    i += 1
  end

  basket
end


def consolidate_cart(cart)
  pp get_uniq(cart)


end


# basket = cart.dup
#
# i = 0
# while i < cart.length
#   cart_item = cart[i][:item]
#
#   j = 0
#   while j < basket.length
#     basket_item = basket[j][:item]
#
#     j += 1
#   end
#
#   i += 1
# end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
