import 'package:flutter/material.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}
class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
     //espera 6 segundos para ai chamar o how acess
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacementNamed('/howaccess');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(197, 255, 149, 1),
      body: Center(
        child: Image.asset('lib/assents/logoapp.png'),
      ),
    );
  }
}