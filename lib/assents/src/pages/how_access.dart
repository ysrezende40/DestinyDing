import 'package:flutter/material.dart';

class HowAccess extends StatefulWidget {
  const HowAccess({super.key});

  @override
  State<HowAccess> createState() => _HowAccessState();
}

class _HowAccessState extends State<HowAccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Image.network(
            'https://i.pinimg.com/564x/14/2a/22/142a226ffdc84dfbc15d179afe66c1bc.jpg',
            width: MediaQuery.of(context).size.width,
            ),
          )
        ],
      ),
    );
  }
}