### Case Statements
It is bad when we check the type object instead of givine a command.
Usually is called type codes.

**Solution**:
- replace case with polymorphism
- use conventon over configuration

before
```
case type
when :regular
  5
when :boss
  100
end
```
class Employee
  def bonus
    0
  end
end

class Boss < Employee
  def bonus
    1500.0
  end
end
