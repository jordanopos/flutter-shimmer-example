import 'package:flutter/material.dart';
import 'package:shimmer_app/src/app/home/pages/home_page.dart';

void main() {
  runApp(ShimmerApp());
}

class ShimmerApp extends StatelessWidget {
  const ShimmerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
