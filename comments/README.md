### Comments

### When it is a code smell

- when re-stating the code or the method name
- hide the problem, instead of fixing it
- dead or unused code
- todo without a link to an issue tracker


### Solutions
- introduce an explaining variable to simplify the code
- remove unncessary comment
- create an issue in issue tracker
- Imrpove comment: explain what problem it solves, not duplicating the code itself

### Examples

```ruby
# app/models/open_question.rb
def summary
  # Text for each answer in order as a comma-separated string
  answers.order(:created_at).pluck(:text).join(', ')
end
```
Step 1: Introduce a variable
```ruby
# app/models/open_question.rb
def summary
  text_from_ordered_answers = answers.order(:created_at).pluck(:text)
  text_from_ordered_answers.join(', ')
end
```
Step 2: Replace temp with query
```ruby
# app/models/open_question.rb
def summary
  text_from_ordered_answers.join(', ')
end

def text_from_ordered_answers
  answers.order(:created_at).pluck(:text)
end
```

### When to add a comment

1. Explain why such decision is made:
- performance
- bug complaints with references

2. What vs why

Comment should answer what code can't answer

3. Long name method replaced with comment

```javascript
const makeSureUserAppearsNewToSubscriptionAPI = (user) => {
```

```javascript
// subscription API needs this to be null for v2 users
if (user.default_name) delete user.default_name;
```

4. Keep comments short

5. Long comments should be formatted
