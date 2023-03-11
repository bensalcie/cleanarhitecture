# cleanarhitecture

The Secret to Maintainable Apps

## TDD Clean Architecture

This project is a starting point for a Flutter application.

This is where we can employ clean architecture and test driven development. As proposed by our friendly Uncle Bob, we should all strive to separate code into independent layers and depend on abstractions instead of concrete implementations.
How can such an independence be achieved? Although we're getting ahead of ourselves a bit, on the layered "onion" image below, the horizontal arrows ---> represent dependency flow. For example, Entities do not depend on anything, Use Cases depend only on Entities etc.


- We will build an app for getting interesting facts about numbers - a Number Trivia App!
- To make things clear and Flutter-specific, let me introduce you to Reso Coder's Flutter Clean Architecture Proposal™ to demonstrate something

Arhitecture proposal


Every "feature" of the app, like getting some interesting trivia about a number, will be divided into 3 layers - presentation, domain and data. The app we're building will have only one feature.
