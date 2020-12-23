### Tell Don't Ask

Don't ask about objects state - tell them what they need to do instead.

### Example


```ruby
# before
if current_user.is_admin?
  current_user.welcome_admin_message
else
  current_user.welcome_user_message
end
# after
class User
  def welcome_message
    if is_admin?
      welcome_admin_message
    else
      welcome_user_message
    end
  end
end
```

### Links

- http://rubyblog.pro/2016/09/tell-dont-ask-principle
- https://thoughtbot.com/blog/tell-dont-ask
