```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> data = jsonDecode(response.body);

      // Accessing data[0] directly, potential error here!
      print('First data point: ${data[0]}');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```