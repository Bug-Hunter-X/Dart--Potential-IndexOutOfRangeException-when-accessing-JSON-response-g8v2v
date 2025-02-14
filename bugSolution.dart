```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic>? data = jsonDecode(response.body);

      // Check for null or empty list before accessing data[0]
      if (data != null && data.isNotEmpty) {
        print('First data point: ${data[0]}');
      } else {
        print('Data list is empty or null');
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```