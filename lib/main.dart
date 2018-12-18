import 'package:flutter/material.dart';
import 'package:listview_of_custom_btn/category_route.dart';

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          // TODO: Determine what properties you'll need to pass into the widget
          child: CategoryRoute(),
        ),
      ),
    );
  }
}
