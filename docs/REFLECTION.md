# Reflection

This assignment allowed me to apply PL/SQL fundamentals to a custom supermarket scenario.

## Key Learnings
- **GOTO Statements:** I learned how `GOTO` statements can transfer control to specific labels in a PL/SQL block, but they should generally be avoided in favor of structured control constructs like `IF-THEN-ELSE` and loops because `GOTO` can make code hard to read and debug.
- **Functions:** Writing stored functions demonstrated how to encapsulate logic that can return a single value and be used directly inside SQL `SELECT` statements.
- **Exception Handling:** Using `NO_DATA_FOUND` is crucial when working with `SELECT INTO` statements inside functions to ensure the program doesn't crash unexpectedly.
- **Best Practices:** Refactoring the `GOTO` statement into standard conditionals reinforced best practices for maintaining clean code.
