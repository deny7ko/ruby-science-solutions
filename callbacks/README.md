### Callbacks

### Why bad
- mixing persistence logic with business logic
- coupled logic is hard to reuse: for example save user without sending and after save email

### How to solve
- replace callback with explicit method execution
