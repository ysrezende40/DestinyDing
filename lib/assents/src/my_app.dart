import 'package:app_destiny_ding/assents/src/pages/how_access.dart';
import 'package:app_destiny_ding/assents/src/pages/splashlogin.dart';
import 'package:flutter/material.dart';
import 'pages/splashscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/howaccess',
      routes: {
         '/splash': (context) => const Splashscreen(),
         '/howaccess': (context) => const HowAccess(),
         '/splashlogin':(context) => const Splashlogin(),
      },
     );
  }
}