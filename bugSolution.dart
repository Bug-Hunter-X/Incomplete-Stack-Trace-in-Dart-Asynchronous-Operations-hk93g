```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['key1']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e, stacktrace) {
    print('Error: $e');
    print('Stacktrace: $stacktrace');
    //Optionally rethrow the error with additional context
    //rethrow;
  }
}

void main() async {
  await fetchData();
}
```