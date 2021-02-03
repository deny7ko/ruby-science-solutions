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
