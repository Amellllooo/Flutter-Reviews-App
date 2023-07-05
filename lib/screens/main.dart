import 'package:flutter/material.dart';
import 'package:reviews_flutter_app/screens/home_screen.dart';

void main() {
  runApp(RestaurantReviewsApp());
}

class RestaurantReviewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Reviews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Замените на HomeScreen
    );
  }
}