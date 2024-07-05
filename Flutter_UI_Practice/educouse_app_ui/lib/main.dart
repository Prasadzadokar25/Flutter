import "package:flutter/material.dart";
import "homapage.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Educourse",
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
