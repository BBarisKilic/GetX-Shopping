import 'package:flutter/material.dart';

import 'views/home_page.dart';

void main() {
  runApp(GetXShoppingApp());
}

class GetXShoppingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Application',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
