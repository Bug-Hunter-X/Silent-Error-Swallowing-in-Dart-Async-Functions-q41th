```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Handle the data
    } else {
      // Error handling for non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    //In the catch block, re-throw the exception to be handled by a higher-level error handling mechanism.
    rethrow; //This line is important and often missed
  }
}
```