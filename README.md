# Dart: Potential IndexOutOfRangeException in JSON Response Handling

This repository demonstrates a common error in Dart when handling JSON responses: accessing list elements without checking for null or empty lists.  The `bug.dart` file contains the problematic code.  The solution is provided in `bugSolution.dart`.

## Bug
The `fetchData` function in `bug.dart` fetches data from a remote API.  It assumes the response will always contain at least one element and accesses `data[0]` directly.  If the API returns an empty list or there's an error in JSON decoding, this causes an `IndexOutOfRangeException`.

## Solution
The `bugSolution.dart` file shows the corrected code. It checks if the `data` list is null or empty before accessing `data[0]`, preventing the exception.