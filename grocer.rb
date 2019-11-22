
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

# Applies a coupon to the cart
def apply_coupons(cart, coupons)
  i = 0
  while i < cart.length
    item = cart[i]
    item_name = cart[i][:item]
    item_dup = cart[i].dup

    if find_item_by_name_in_collection(item_name, coupons) != nil
      coupon_item = find_item_by_name_in_collection(item_name, coupons)

      # Reasigning the duplicate item name to be the name with coupon
      item_dup[:item] = "#{item_name} W/COUPON"

      # Chaning the count in the duplicate item and the original item
      item[:count] -= coupon_item[:num]
      item_dup[:count] -= item[:count]

      # Changing the price
      item_dup[:price] = (coupon_item[:cost] / coupon_item[:num])

      cart << item_dup
    end

    i += 1
  end

  cart
end

# Applies a clearance sale to the item
def apply_clearance(cart)
  i = 0
  while i < cart.length
    item = cart[i]
    item_clearance = cart[i][:clearance]

    if item_clearance == true
      item[:price] = (item[:price] - ((item[:price] * 20.0) / 100))
    end

    i += 1
  end

  cart
end

def checkout(cart, coupons)
  grand_total = 0
  consolidate_cart = consolidate_cart(cart)

  apply_coupons(consolidate_cart, coupons)
  apply_clearance(cart)
end
