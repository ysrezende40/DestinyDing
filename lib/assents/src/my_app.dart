import 'package:flutter/material.dart';
import 'pages/splashscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
         '/splash': (context) => const Splashscreen(),
      },
     );
  }
}