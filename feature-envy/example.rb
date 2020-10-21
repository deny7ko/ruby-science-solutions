# before
class Warehouse
  def sale_price(item)
    (item.price - item.rebate) * @vat
  end
end

# after
class Warehouse
  def sale_price(item)
    item.sale_price * @vat
  end
end

class Item
  def sale_price
    price - rebate
  end
end
