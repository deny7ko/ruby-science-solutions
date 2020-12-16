### DRY

If it is small duplication - there is no harm in it.
Apply DRY only when it is really cumbersome and causing troubles.

Give the number of repitions before you make it DRY.

Wait until the code is mature and decision will not be changed.

We should care about being cheap without introducing regressions.

### Important notes

Knowledge should not be repeated. For example, there should be only 1 BA that creates a comment.

### Drawbacks

- adds complexity
- increases coupling to 1 class with shared code
- prefer duplication over the wrong abstraction
