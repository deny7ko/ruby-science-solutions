### Large Class
When:
- impossible to tell what class does in 1 sentence
- has more private than public methods
- has more than 7 methods

How to fix:
- split the class in smaller classes
- prefer using composition over inheritance
- replace conditionals with polymorphism
- Extract decorator if class delegates method(?)
- Replace subclasses with strategies if the large class is base class(?)

### Links
- https://docs.rubocop.org/rubocop/cops_metrics.html#metricsclasslength
- https://github.com/troessner/reek/blob/master/docs/Large-Class.md#large-class
