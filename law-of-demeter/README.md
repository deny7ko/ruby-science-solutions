### Law of Demeter

Do not allow to access inner state of another object.
Decreases the amount of dependencies.

Bad
```ruby
class User
  def discounted_plan_price(discount_code)
    coupon = Coupon.new(discount_code)
    coupon.discount(account.plan.price)
  end
end
```

Good
```ruby
class User
  def discounted_plan_price(discount_code)
    account.discounted_plan_price(discount_code)
  end
end

class Account
  def discounted_plan_price(discount_code)
    coupon = Coupon.new(discount_code)
    coupon.discount(plan.price)
  end
end
```

It is okay if all method invocations return the same type, for example:

```ruby
# Ruby's Enumerable
users.select(&:active?).map(&:name)
# ActiveRecord chains
users.active.without_posts.signed_up_this_week
```
