# Elixir Enum.each and throw Unexpected Behavior

This example demonstrates an unusual behavior in Elixir's `Enum.each` function when used with `throw`.  The `throw` statement within the anonymous function terminates the entire enumeration prematurely. This behavior differs from many imperative languages where a `break` statement might only exit the inner loop.

## Bug Description

The provided Elixir code iterates through a list. If a value equals 3, it throws an exception using `throw`. This causes `Enum.each` to immediately stop execution, even though other elements in the list remain unprocessed.

## Solution

The recommended solution is to use `Enum.reduce` or a `try-catch` block. These approaches offer more control over exception handling within the iteration process.