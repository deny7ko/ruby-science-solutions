### Feature Envy
Method accesses another objects data more than its own.

Reveals a method would work better in another class.
Logic is difficult to reuse.

### Symptoms
- referencing the same object
- using model name in the method name: `invite_user`
- private methods accept the same parameters

### Solutions
- extract method to another class
- inline class for small piece of code

### References
- https://github.com/troessner/reek/blob/master/docs/Feature-Envy.md
