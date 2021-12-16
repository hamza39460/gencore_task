import 'package:flutter/material.dart';
import 'package:gencore_task/Screens/list_view_screen.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen(),
    );
  }
}
