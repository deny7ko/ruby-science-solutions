# before
class Warehouse
  def sale_price(item)
    (item.price - item.rebate) * @vat
  end
end
