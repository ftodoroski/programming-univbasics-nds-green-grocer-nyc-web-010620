
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

# returns uniq items in a collection
def get_uniq(cart)
  basket = []

  i = 0
  while i < cart.length
    item = cart[i]
    item_name = cart[i][:item]

    if find_item_by_name_in_collection(item_name, basket) == nil
      basket << item
    end

    i += 1
  end

  basket
end

# Sets a counter at 0
def set_count(cart)
  i = 0
  while i < cart.length
    item = cart[i]
    item[:count] = 0

    i += 1
  end

  cart
end

# Adds a count of items to the basket from cart
def consolidate_cart(cart)
  basket = set_count(get_uniq(cart))

  i = 0
  while i < cart.length
    item = cart[i]
    item_name = cart[i][:item]

    if find_item_by_name_in_collection(item_name, basket)
      basket_item = find_item_by_name_in_collection(item_name, basket)
      basket_item[:count] += 1
    end

    i += 1
  end

  basket
end

def apply_coupons(cart, coupons)
  i = 0
  while i < cart.length
    item = cart[i]
    item_name = cart[i][:item]
    item_price = cart[i][:price]
    item_count = cart[i][:count]

    if find_item_by_name_in_collection(item_name, coupons) != nil

    end

    i += 1
  end

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
