### SRP

Class has only 1 reason to change.

### Responsibility Magnets
- User
- Talent
- Task

```ruby
class Purchase
  def charge
    purchaser.charge_credit_card(total_amunt)
  end
end

### turns into

class MakePurchase
  def initialize(purchase, purchaser)
  end

  def call
    purchaser.charge_credit_card(purchase.total_amount)
  end
end
```
