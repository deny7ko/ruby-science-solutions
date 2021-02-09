## 1. Dependency Inversion Principle
> - High level modules should not depend on low level modules. Both should depend on abstractions
> - Abastractions should not depend on details. Details should depend upon absractions.

### Why Good:

If you push your dependency decision up until they reach the level that contains the information needed to make decisions -> you will prevent changes from affectings several layers.

### Drawbacks
- more absractions
- more indirection
- more difficulty

## 2. Open/Closed Principle

> Software entities should be open for extension, but closed for modification.

### Why Good

- When you change the class you can break something. If it is an extension - you will not break anything.

### How
- Inheritance
- Decorators with delegation
- Dependency injection

### Drawbacks
- difficult to understand
- can cause extra work

## 3. Composition over inheritance

Prefer composition unless inheritance is strongly needed.

### Why Good
- Allows to build smaller and reusable classes.
- Handling hierarchies with inheritance is hard.

### Drawbacks
- If you really have hierarchies use inheritance
- Need to instatiate more objects
- More absract

## 4. Law of Demeter

> Law of multiple dots

Do not entagle a method with another objects' dependencies.

OK if method chain is called on the same type.

### Why good
- Helps managing dependencies

### How
- Delegate

## 5. Tell Don't Ask

Tell what should be done rather than quering objects.

### Why good
- **Encapsulates logic**: encapsulates the condition under which operation can be done

- **Encapsulates state**: when you ask what is the object you create coupling.

- **Minimizes public interface**: you don't need public methods like `has_name?`

### Drawbacks

- Following tell don't ask can cause violations of single responsibility

## 6. DRY

- Don't repeat yourself

### Why good

- Eliminates duplicates knowledge

### Drawbacks

- can lead to unncessary absractions too early

## 7. Single Responsibility Principle

- a class should have only 1 reason to change

## 8. Don't Repeat yourself

- every piece of knowledge should have a single unambigious representation in the system.

## 9. Convention Over Configuration

- a rule(convention) is easier than configure each case in different way

## 10. Replace callback with a method

- callbacks should be avoided and used in moderation or not at all.

## 11. Replace mixin with composition

## 12. Replace subclasses with strategies

## 13. Inject Dependencies

## 14. Inline class

- remove class and inline into 1-2 methods

## 15. Move method

- where it belongs better

## 16. Use Class as a Factory

## 17. Introduce Parameter Object

- when arguments becomes too long and it is better to group them

## 18. Introduce Form Object

## 19. Introduce Explaining Variable

## 20. Extract Validator

## 21. Extract Partial
