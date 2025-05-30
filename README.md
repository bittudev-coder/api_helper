# api_caller

A lightweight and reusable Dart/Flutter utility for making HTTP API requests easier using the `http` package.

## Features

- Simplifies `GET`, `POST`, and other HTTP methods
- Optional headers and body support
- Error handling included
- Works with RESTful APIs

## Getting Started

Add it to your `pubspec.yaml`:

```yaml
dependencies:
  api_helper: ^1.0.6


import 'package:api_helper/api_helper.dart';

void fetchData() async {
  final response = await ApiHelper.get('https://jsonplaceholder.typicode.com/posts');
  if (response != null && response.statusCode == 200) {
    print(response.body);
  }
}
