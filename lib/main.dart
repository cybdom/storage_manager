import 'package:flutter/material.dart';
import 'package:storage_manager/ui/screens/screens.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        'detail': (ctx) => DetailsScreen(),
      }
    );
  }
}