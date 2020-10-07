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
