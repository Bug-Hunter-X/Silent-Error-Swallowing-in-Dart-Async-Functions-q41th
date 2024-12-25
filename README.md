# Silent Error Swallowing in Dart Async Functions

This repository demonstrates a common error in Dart asynchronous programming:  silently swallowing exceptions caught in `async` functions.  The `bug.dart` file shows the incorrect handling, while `bugSolution.dart` provides the corrected version.

## The Problem

The original `fetchData` function uses a `try-catch` block within an `async` function to handle potential network errors. However, it fails to re-throw the exception after catching it. This prevents higher-level error handling mechanisms from responding, leading to silent failures.

## The Solution

The `bugSolution.dart` file adds the `rethrow` statement within the `catch` block. This ensures that the caught exception propagates up the call stack, allowing for proper error handling and reporting.