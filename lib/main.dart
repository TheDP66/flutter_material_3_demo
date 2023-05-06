import 'package:flutter/material.dart';
import 'package:material_widget/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material 3 Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, //? Untuk menggunakan standard material 3
        fontFamily: "OpenSans",
      ),
      home: const HomePage(),
    );
  }
}
