```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data elements
      print(jsonData['key1']);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions here
    print('Error: $e'); //This line will not print the full stack trace in some cases
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}

void main() async {
  await fetchData();
}
```