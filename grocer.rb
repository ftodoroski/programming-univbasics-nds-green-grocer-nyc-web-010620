# find an item and return the collection of that item
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
  basket =


end


def consolidate_cart(cart)
  basket = []
  pp cart

  i = 0
  while i < cart.length
    item = cart[i]

    i += 1
  end


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
